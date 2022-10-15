.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$4;
.super Ljava/lang/Object;
.source "SleepFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->saveAim()V
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
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 505
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$4;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V

    .line 506
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$4;->call(Ljava/lang/Boolean;)V

    return-void
.end method
