resource "launchdarkly_custom_role" "admin" {
  key         = local.admin_role_key
  name        = "${local.project_name} Admin"
  description = "Administrator role for ${local.project_id}."

  policy_statements {
    not_resources = [
      "proj/${local.project_key}"
    ]
    actions = [
      "viewProject"
    ]
    effect = "deny"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}:env/*"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}:env/*:flag/*"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}:env/*:destination/*"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}:env/*:experiment/*"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}:env/*:segment/*"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}:release-pipeline/*"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}:metric/*"
    ]
    actions = [
      "*"
    ]
    effect = "allow"
  }
}

resource "launchdarkly_custom_role" "reader" {
  key         = local.reader_role_key
  name        = "${local.project_name} Reader"
  description = "Reader role for ${local.project_id}."

  policy_statements {
    not_resources = [
      "proj/${local.project_key}"
    ]
    actions = [
      "viewProject"
    ]
    effect = "deny"
  }

  policy_statements {
    resources = [
      "proj/${local.project_key}"
    ]
    actions = [
      "viewProject"
    ]
    effect = "allow"
  }
}