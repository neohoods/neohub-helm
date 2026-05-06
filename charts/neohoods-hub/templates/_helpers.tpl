{{/*
  NeoHoods Hub helpers — single-tenant; no domain-tenant JSON helpers.
*/}}

{{/* Common labels block. */}}
{{- define "neohoods-hub.labels" -}}
app.kubernetes.io/name: {{ .Values.global.appName }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{/* Backend resource name: hub-<release>-backend. */}}
{{- define "neohoods-hub.backendName" -}}
hub-{{ .Release.Name }}-backend
{{- end -}}

{{/* Frontend resource name: hub-<release>-frontend. */}}
{{- define "neohoods-hub.frontendName" -}}
hub-{{ .Release.Name }}-frontend
{{- end -}}

{{/* Postgres StatefulSet/Service name: hub-<release>-postgresql. */}}
{{- define "neohoods-hub.postgresName" -}}
hub-{{ .Release.Name }}-postgresql
{{- end -}}

{{/* Resolve the GitHub App secret name (existing or chart-managed). */}}
{{- define "neohoods-hub.githubAppSecretName" -}}
{{- if .Values.githubApp.existingSecret -}}
{{ .Values.githubApp.existingSecret }}
{{- else -}}
hub-{{ .Release.Name }}-github-app
{{- end -}}
{{- end -}}
