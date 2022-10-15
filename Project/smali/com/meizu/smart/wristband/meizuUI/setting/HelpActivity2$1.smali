.class Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$1;
.super Ljava/lang/Object;
.source "HelpActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/HelpActivity2;->finish()V

    .line 40
    return-void
.end method
