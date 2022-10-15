.class public Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/utils/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionDeniedDialog"
.end annotation


# static fields
.field private static final ARGUMENT_FINISH_ACTIVITY:Ljava/lang/String; = "finish"


# instance fields
.field private mFinishActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->mFinishActivity:Z

    return-void
.end method

.method public static newInstance(Z)Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;
    .locals 3
    .param p0, "finishActivity"    # Z

    .prologue
    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "finish"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    new-instance v1, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;-><init>()V

    .line 95
    .local v1, "dialog":Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->setArguments(Landroid/os/Bundle;)V

    .line 96
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->mFinishActivity:Z

    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080183

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 112
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->mFinishActivity:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08020b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/utils/PermissionUtils$PermissionDeniedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 117
    :cond_0
    return-void
.end method
