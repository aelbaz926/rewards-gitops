{{/*
Generate the name of the application
*/}}
{{- define "points.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a clean fullname without release prefix
*/}}
{{- define "points.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- include "points.name" . | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
