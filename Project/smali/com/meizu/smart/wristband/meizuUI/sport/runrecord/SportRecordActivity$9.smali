.class Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;
.super Ljava/lang/Object;
.source "SportRecordActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->createShareImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 23
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 609
    .local v8, "bInfo":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02024c

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 613
    .local v9, "bQRCode":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 614
    .local v12, "mapWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 616
    .local v11, "mapHeight":I
    add-int/lit16 v0, v12, 0xa0

    move/from16 v20, v0

    .line 617
    .local v20, "shareWidth":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v11

    add-int/lit16 v0, v3, 0x96

    move/from16 v19, v0

    .line 620
    .local v19, "shareHeight":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 621
    .local v18, "shareBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 623
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 626
    new-instance v7, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 627
    .local v7, "paint1":Landroid/graphics/Paint;
    const/high16 v3, 0x41700000    # 15.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const-string v6, "#CCCCCC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 628
    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v4, 0x42200000    # 40.0f

    add-int/lit8 v5, v12, 0x78

    int-to-float v5, v5

    add-int/lit8 v6, v11, 0x50

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 632
    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, 0x42a00000    # 80.0f

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 634
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v12, v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x50

    int-to-float v3, v3

    add-int/lit8 v4, v11, 0x50

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v8, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 636
    const/high16 v3, 0x42480000    # 50.0f

    add-int/lit16 v4, v11, 0x82

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v9, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 639
    new-instance v16, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 640
    .local v16, "paint":Landroid/graphics/Paint;
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 641
    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat18:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$1000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .line 643
    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$1000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 644
    .local v21, "strTime":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    .line 645
    .local v22, "textWidith":F
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 646
    const-string v3, "#cccccc"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 649
    new-instance v15, Landroid/graphics/RectF;

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x43020000    # 130.0f

    add-float v5, v5, v22

    const/high16 v6, 0x432a0000    # 170.0f

    invoke-direct {v15, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 650
    .local v15, "oval3":Landroid/graphics/RectF;
    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x41f00000    # 30.0f

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v3, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 653
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 654
    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 655
    const/high16 v3, 0x42dc0000    # 110.0f

    const/high16 v4, 0x43160000    # 150.0f

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 658
    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 659
    const/high16 v3, -0x1000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    const v4, 0x7f08027f

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    add-int/lit16 v5, v11, 0x8c

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1e

    int-to-float v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 661
    const-string v3, "#5ED1DC"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    const v4, 0x7f080280

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    add-int/lit16 v5, v11, 0x8c

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x32

    int-to-float v5, v5

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 663
    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 664
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 666
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 667
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getShareCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sport_record_share.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$602(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getShareCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .local v17, "savedir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 673
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 676
    :cond_0
    const/4 v13, 0x0

    .line 678
    .local v13, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "out":Ljava/io/FileOutputStream;
    .local v14, "out":Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 684
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v13, :cond_1

    .line 685
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 686
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 687
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 690
    :cond_1
    const-string/jumbo v3, "\u8fd0\u52a8\u8bb0\u5f55\u5206\u4eab\u56fe\u7247\u4fdd\u5b58\u6210\u529f"

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :goto_1
    return-void

    .line 679
    :catch_0
    move-exception v10

    .line 680
    .local v10, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 681
    const-string/jumbo v3, "\u8fd0\u52a8\u8bb0\u5f55\u5206\u4eab\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 691
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 692
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v3, "\u8fd0\u52a8\u8bb0\u5f55\u5206\u4eab\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_1
.end method
