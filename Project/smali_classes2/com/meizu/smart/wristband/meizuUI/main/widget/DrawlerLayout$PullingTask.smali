.class Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;
.super Landroid/os/AsyncTask;
.source "DrawlerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    .local v0, "height":I
    :goto_0
    add-int/lit8 v0, v0, 0x14

    .line 257
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)I

    move-result v0

    .line 259
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->publishProgress([Ljava/lang/Object;)V

    .line 265
    const/4 v1, 0x0

    return-object v1

    .line 262
    :cond_0
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->publishProgress([Ljava/lang/Object;)V

    .line 263
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;I)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 9
    .param p1, "height"    # [Ljava/lang/Integer;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 270
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$300(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$400(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 273
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$300(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$100(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)I

    move-result v3

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;

    invoke-static {v6}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout;)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-double v6, v3

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 274
    .local v0, "i":F
    cmpg-float v3, v0, v8

    if-gez v3, :cond_0

    .line 275
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 279
    .end local v0    # "i":F
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawlerLayout$PullingTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
