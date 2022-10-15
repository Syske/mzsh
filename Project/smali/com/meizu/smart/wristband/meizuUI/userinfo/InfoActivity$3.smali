.class Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$3;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->setListener()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$3;->call(Ljava/lang/Void;)V

    return-void
.end method

.method public call(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)V

    .line 288
    return-void
.end method
