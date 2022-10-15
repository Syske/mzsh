.class public Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final INTENT_PATCH_COST_TIME:Ljava/lang/String; = "intent_patch_cost_time"

.field public static final INTENT_PATCH_DEXES_PATH:Ljava/lang/String; = "intent_patch_dexes_path"

.field public static final INTENT_PATCH_EXCEPTION:Ljava/lang/String; = "intent_patch_exception"

.field public static final INTENT_PATCH_LIBS_PATH:Ljava/lang/String; = "intent_patch_libs_path"

.field public static final INTENT_PATCH_MISMATCH_DEX_PATH:Ljava/lang/String; = "intent_patch_mismatch_dex_path"

.field public static final INTENT_PATCH_MISMATCH_LIB_PATH:Ljava/lang/String; = "intent_patch_mismatch_lib_path"

.field public static final INTENT_PATCH_MISSING_DEX_PATH:Ljava/lang/String; = "intent_patch_missing_dex_path"

.field public static final INTENT_PATCH_MISSING_LIB_PATH:Ljava/lang/String; = "intent_patch_missing_lib_path"

.field public static final INTENT_PATCH_NEW_VERSION:Ljava/lang/String; = "intent_patch_new_version"

.field public static final INTENT_PATCH_OLD_VERSION:Ljava/lang/String; = "intent_patch_old_version"

.field public static final INTENT_PATCH_PACKAGE_CONFIG:Ljava/lang/String; = "intent_patch_package_config"

.field public static final INTENT_PATCH_PACKAGE_PATCH_CHECK:Ljava/lang/String; = "intent_patch_package_patch_check"

.field public static final INTENT_RETURN_CODE:Ljava/lang/String; = "intent_return_code"

.field private static final TAG:Ljava/lang/String; = "ShareIntentUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 164
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 159
    .restart local p2    # "defaultValue":Z
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "ShareIntentUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanExtra exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 149
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 144
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "ShareIntentUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntExtra exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIntentPackageConfig(Landroid/content/Intent;)Ljava/util/HashMap;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "intent_patch_package_config"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    check-cast v0, Ljava/util/HashMap;

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntentPatchCostTime(Landroid/content/Intent;)J
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    const-string v0, "intent_patch_cost_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIntentPatchDexPaths(Landroid/content/Intent;)Ljava/util/HashMap;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "intent_patch_dexes_path"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    check-cast v0, Ljava/util/HashMap;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntentPatchException(Landroid/content/Intent;)Ljava/lang/Exception;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const-string v0, "intent_patch_exception"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    check-cast v0, Ljava/lang/Exception;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntentPatchLibsPaths(Landroid/content/Intent;)Ljava/util/HashMap;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-string v0, "intent_patch_libs_path"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    check-cast v0, Ljava/util/HashMap;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntentReturnCode(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string v0, "intent_return_code"

    const/16 v1, -0x2710

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 168
    if-nez p0, :cond_0

    .line 178
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 173
    .restart local p2    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string v1, "ShareIntentUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntExtra exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p0, :cond_0

    .line 135
    :goto_0
    return-object v0

    .line 130
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    const-string v2, "ShareIntentUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSerializableExtra exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p0, :cond_0

    .line 106
    :goto_0
    return-object v0

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    const-string v2, "ShareIntentUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStringExtra exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 111
    if-nez p0, :cond_0

    .line 121
    :goto_0
    return-object v0

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    const-string v2, "ShareIntentUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStringExtra exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIntentPatchCostTime(Landroid/content/Intent;J)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "cost"    # J

    .prologue
    .line 55
    const-string v0, "intent_patch_cost_time"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public static setIntentReturnCode(Landroid/content/Intent;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "code"    # I

    .prologue
    .line 47
    const-string v0, "intent_return_code"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    return-void
.end method
