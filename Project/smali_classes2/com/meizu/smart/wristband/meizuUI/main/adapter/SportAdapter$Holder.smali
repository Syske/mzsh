.class Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;
.super Ljava/lang/Object;
.source "SportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field mTextView_title1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field mTextView_title2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field mTextView_tv1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field mTextView_tv2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field mTextView_tv3:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;

.field tv_km:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const v0, 0x7f0e024e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_title1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 37
    const v0, 0x7f0e024d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_title2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 38
    const v0, 0x7f0e00ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_tv1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 39
    const v0, 0x7f0e015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_tv2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 40
    const v0, 0x7f0e0159

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_tv3:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 41
    const v0, 0x7f0e00d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->tv_km:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 42
    return-void
.end method
