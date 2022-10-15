.class Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity$1;
.super Ljava/lang/Object;
.source "SpalshActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;)V

    .line 47
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/main/SpalshActivity;->finish()V

    .line 48
    return-void
.end method
