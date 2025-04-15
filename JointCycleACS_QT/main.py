# This Python file uses the following encoding: utf-8
import sys
from pathlib import Path
from time import strftime, localtime
from PySide6.QtCore import QTimer, QObject, Signal, Slot, Property
import ctypes
from PySide6.QtGui import QGuiApplication, QIcon, QPalette, QColor, QFont
from PySide6.QtQml import QQmlApplicationEngine

myappid = u'JointCycleACS.v001.2024'
ctypes.windll.shell32.SetCurrentProcessExplicitAppUserModelID(myappid)

class ManualPane(QObject):
    scrollValueChanged = Signal(int)
    forceValueChanged = Signal(int)
    displacementValueChanged = Signal(int)
    rangeOfMotionValueChanged = Signal(int)

    def __init__(self):
        super().__init__()
        self._scrollValue = 50
        self._forceValue = 0
        self._displacementValue = 0
        self._rangeOfMotionValue = 0

    @Property(int, notify=scrollValueChanged)
    def scrollValue(self):
        return self._scrollValue

    @scrollValue.setter
    def scrollValue(self, value):
        if self._scrollValue != value:
            self._scrollValue = value
            self.scrollValueChanged.emit(self._scrollValue)

    @Property(int, notify=forceValueChanged)
    def forceValue(self):
        return self._forceValue

    @forceValue.setter
    def forceValue(self, value):
        if self._forceValue != value:
            self._forceValue = value
            self.forceValueChanged.emit(self._forceValue)

    @Property(int, notify=displacementValueChanged)
    def displacementValue(self):
        return self._displacementValue

    @displacementValue.setter
    def displacementValue(self, value):
        if self._displacementValue != value:
            self._displacementValue = value
            self.displacementValueChanged.emit(self._displacementValue)

    @Property(int, notify=rangeOfMotionValueChanged)
    def rangeOfMotionValue(self):
        return self._rangeOfMotionValue

    @rangeOfMotionValue.setter
    def rangeOfMotionValue(self, value):
        if self._rangeOfMotionValue != value:
            self._rangeOfMotionValue = value
            self.rangeOfMotionValueChanged.emit(self._rangeOfMotionValue)

    @Slot(int)
    def setScrollValue(self, value):
        self.scrollValue = value

    @Slot(int)
    def setForceValue(self, value):
        self.forceValue = value

    @Slot(int)
    def setDisplacementValue(self, value):
        self.displacementValue = value

    @Slot(int)
    def setRangeOfMotionValue(self, value):
        self.rangeOfMotionValue = value

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)

    # Pretty Settings
    app.setWindowIcon(QIcon("logo_rectangle2.png"))
    pal = app.palette()
    pal.setColor(QPalette.ToolTipBase, QColor("#c7d7e6"))
    pal.setColor(QPalette.ToolTipText, QColor("#221c41"))
    pal.setColor(QPalette.ButtonText, QColor("#221c41"))
    font = QFont()
    font.setPointSize(16)
    app.setFont(font)
    app.setPalette(pal)

    engine = QQmlApplicationEngine()

    # Create an instance of ManualPane and set it as a context property
    manualPane = ManualPane()
    engine.rootContext().setContextProperty("manualPane", manualPane)

    def update_time():
        curr_time = strftime("%H:%M:%S", localtime())
        engine.rootObjects()[0].setProperty('currTime', curr_time)
        print(manualPane.scrollValue)

    def longtimer_func():
        manualPane.scrollValue = 22

    timer = QTimer()
    timer.setInterval(100) # msecs
    timer.timeout.connect(update_time)
    timer.start()
    longtimer = QTimer()
    longtimer.setInterval(10000) # msecs
    longtimer.timeout.connect(longtimer_func)
    longtimer.start()

    qml_file = Path(__file__).resolve().parent / "main.qml"
    engine.load(qml_file)

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
    
    