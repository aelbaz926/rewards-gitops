{{/*
Generate the name of the application
*/}}
{{- define "badges.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a fullname using the release name
*/}}
{{- define "badges.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name (include "badges.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
