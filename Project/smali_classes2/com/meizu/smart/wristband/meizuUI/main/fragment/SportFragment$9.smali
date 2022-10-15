.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$9;
.super Ljava/lang/Object;
.source "SportFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->saveAim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_AIM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 535
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->refreshSportAim()V

    .line 536
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 530
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$9;->call(Ljava/lang/Boolean;)V

    return-void
.end method
