{{/*
Generate the name of the application
*/}}
{{- define "badges.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a clean fullname without release prefix
*/}}
{{- define "badges.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- include "badges.name" . | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
