' VBS Script to run Simplorer Experiment Tool
' Generated by Simplorer Schematic


'Frequency Analysis Setup
set expapp = CreateObject ("Simplorer.ExpMod")
expapp.Init 0
expapp.CreateModl "C:\Dokumente und Einstellungen\student\Eigene Dateien\EMS\1.1.sml"
expapp.CreateFRTask  "1.1", "FrSi1", 1, 1000, 10, 1, 1e-006, 0.001, 0, 0, 0.1, 1e-007, 0.0001, 0, 0.001, 0.0001, 0, 5, 1, 0, "", 0, 1, "", 1, 0, 1, 0, "", ""

expapp.Run
expapp.Exit


