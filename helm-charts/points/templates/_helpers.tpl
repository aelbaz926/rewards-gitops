{{/*
Generate the name of the application
*/}}
{{- define "points.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a fullname using the release name
*/}}
{{- define "points.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name (include "points.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
