.class Lcom/mob/tools/gui/ScrollableGridView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/gui/Scrollable$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/ScrollableGridView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mob/tools/gui/ScrollableGridView;


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/ScrollableGridView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/mob/tools/gui/ScrollableGridView$1;->this$0:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/mob/tools/gui/Scrollable;IIII)V
    .locals 2
    .param p1, "scrollable"    # Lcom/mob/tools/gui/Scrollable;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "oldl"    # I
    .param p5, "oldt"    # I

    .prologue
    iget-object v1, p0, Lcom/mob/tools/gui/ScrollableGridView$1;->this$0:Lcom/mob/tools/gui/ScrollableGridView;

    if-gtz p3, :cond_0

    if-gtz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/mob/tools/gui/ScrollableGridView;->access$002(Lcom/mob/tools/gui/ScrollableGridView;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
