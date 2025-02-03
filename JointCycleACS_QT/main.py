# This Python file uses the following encoding: utf-8
import sys
from pathlib import Path

import ctypes
myappid = u'JointCycleACS.v001.2024'
ctypes.windll.shell32.SetCurrentProcessExplicitAppUserModelID(myappid)


from PySide6.QtGui import QGuiApplication, QIcon, QPixmap, QPalette, QColor, QFont
from PySide6.QtQml import QQmlApplicationEngine


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    # app.setWindowIcon(QIcon("JointCycleACS_icon_v2.1.png"))
    app.setWindowIcon(QIcon("logo_rectangle2.png"))
    pal = app.palette()
    pal.setColor(QPalette.ToolTipBase, QColor("#c7d7e6"))
    pal.setColor(QPalette.ToolTipText, QColor("#221c41"))
    pal.setColor(QPalette.ButtonText, QColor("#221c41"))
    #pal.setColor(QPalette.BrightText, QColor("red"))
    font = QFont()
    font.setPointSize(16)  # Set your desired font size here # Apply the font to the application's tooltips
    app.setFont(font)

    app.setPalette(pal)
    # app.setWindowIcon(QIcon("apricot_plainer.png"))
    engine = QQmlApplicationEngine()
    qml_file = Path(__file__).resolve().parent / "main.qml"
    engine.load(qml_file)
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
