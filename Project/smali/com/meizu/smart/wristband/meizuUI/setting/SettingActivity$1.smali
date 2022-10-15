.class Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    const v2, 0x7f0800e9

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity$1;->call(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
