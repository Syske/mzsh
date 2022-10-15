.class Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;
.super Ljava/lang/Object;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder0"
.end annotation


# instance fields
.field head_dis:Landroid/widget/TextView;

.field head_time:Landroid/widget/TextView;

.field item_day_dur:Landroid/widget/TextView;

.field item_dis:Landroid/widget/TextView;

.field item_kacl:Landroid/widget/TextView;

.field item_speed:Landroid/widget/TextView;

.field item_speed_img:Landroid/widget/ImageView;

.field item_speed_unit:Landroid/widget/TextView;

.field item_time:Landroid/widget/TextView;

.field sport_long:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;

.field title:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;
    .param p2, "x1"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;)V

    return-void
.end method
