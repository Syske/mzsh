.class Lcom/meizu/smart/wristband/utils/NumAnim$Counter;
.super Ljava/lang/Object;
.source "NumAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/utils/NumAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Counter"
.end annotation


# instance fields
.field private i:I

.field private nums:[Ljava/lang/Float;

.field private pertime:J

.field private final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;[Ljava/lang/Float;J)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "nums"    # [Ljava/lang/Float;
    .param p3, "time"    # J

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->i:I

    .line 80
    iput-object p1, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->view:Landroid/widget/TextView;

    .line 81
    iput-object p2, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->nums:[Ljava/lang/Float;

    .line 82
    array-length v0, p2

    int-to-long v0, v0

    div-long v0, p3, v0

    iput-wide v0, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->pertime:J

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    iget v0, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->i:I

    iget-object v1, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->nums:[Ljava/lang/Float;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->view:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->nums:[Ljava/lang/Float;

    iget v2, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->i:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/utils/NumAnim;->NumberFormat(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->view:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 93
    iget-object v0, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->view:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/meizu/smart/wristband/utils/NumAnim$Counter;->pertime:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
