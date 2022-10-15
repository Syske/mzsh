.class public abstract Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.super Lcom/mob/tools/gui/ViewPagerAdapter;
.source "PlatformPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DESIGN_BOTTOM_HEIGHT:I = 0x34

.field protected static final MIN_CLICK_INTERVAL:I = 0x3e8


# instance fields
.field protected bottomHeight:I

.field protected cellHeight:I

.field protected cells:[[Ljava/lang/Object;

.field private lastClickTime:J

.field protected lineSize:I

.field protected logoHeight:I

.field protected paddingTop:I

.field private page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

.field protected panelHeight:I

.field protected sepLineWidth:I

.field private vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "page"    # Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/mob/tools/gui/ViewPagerAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    .line 53
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 55
    invoke-virtual {p0, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->collectCells(Ljava/util/ArrayList;)V

    .line 57
    :cond_0
    return-void
.end method

.method private createPanel(Landroid/content/Context;)Landroid/view/View;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    .local v9, "llPanel":Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    const v13, -0xd0d0e

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 104
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    div-int v5, v13, v14

    .line 105
    .local v5, "lineCount":I
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int/2addr v13, v5

    new-array v7, v13, [Landroid/widget/LinearLayout;

    .line 106
    .local v7, "llCells":[Landroid/widget/LinearLayout;
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 107
    const-string v13, "ssdk_oks_classic_platform_cell_back"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "cellBack":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 110
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    .local v8, "llLine":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    invoke-direct {v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v10, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    if-ge v4, v13, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int/2addr v13, v2

    add-int/2addr v13, v4

    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v14, v7, v13

    .line 116
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int/2addr v13, v2

    add-int/2addr v13, v4

    aget-object v13, v7, v13

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 117
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int/2addr v13, v2

    add-int/2addr v13, v4

    aget-object v13, v7, v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    invoke-direct {v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 119
    .restart local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 120
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int/2addr v13, v2

    add-int/2addr v13, v4

    aget-object v13, v7, v13

    invoke-virtual {v8, v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    add-int/lit8 v13, v13, -0x1

    if-ge v4, v13, :cond_0

    .line 123
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    .local v12, "vSep":Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    const/4 v14, -0x1

    invoke-direct {v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    .restart local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .end local v12    # "vSep":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 129
    :cond_1
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 130
    .restart local v12    # "vSep":Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    invoke-direct {v10, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .restart local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 134
    .end local v4    # "j":I
    .end local v8    # "llLine":Landroid/widget/LinearLayout;
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "vSep":Landroid/view/View;
    :cond_2
    array-length v14, v7

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_3

    aget-object v6, v7, v13

    .line 135
    .local v6, "llCell":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 136
    .local v3, "ivLogo":Landroid/widget/ImageView;
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->logoHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .restart local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v15, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->paddingTop:I

    iput v15, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 139
    invoke-virtual {v6, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 142
    .local v11, "tvName":Landroid/widget/TextView;
    const v15, -0x9b9b9c

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    const/4 v15, 0x2

    const/high16 v16, 0x41600000    # 14.0f

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    const/16 v15, 0x11

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v15, -0x1

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .restart local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v15, 0x3f800000    # 1.0f

    iput v15, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 147
    invoke-virtual {v6, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 150
    .end local v3    # "ivLogo":Landroid/widget/ImageView;
    .end local v6    # "llCell":Landroid/widget/LinearLayout;
    .end local v10    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "tvName":Landroid/widget/TextView;
    :cond_3
    return-object v9
.end method

.method private refreshPanel([Landroid/widget/LinearLayout;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "llCells"    # [Landroid/widget/LinearLayout;
    .param p2, "logos"    # [Ljava/lang/Object;

    .prologue
    .line 154
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v9}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "ssdk_oks_classic_platform_cell_back"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "cellBack":I
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v9}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "ssdk_oks_classic_platfrom_cell_back_nor"

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, "disableBack":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, p2

    if-ge v2, v9, :cond_6

    .line 157
    aget-object v9, p1, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 158
    .local v3, "ivLogo":Landroid/widget/ImageView;
    aget-object v9, p1, v2

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 159
    .local v8, "tvName":Landroid/widget/TextView;
    aget-object v9, p2, v2

    if-nez v9, :cond_0

    .line 160
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    aget-object v9, p1, v2

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 163
    aget-object v9, p1, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    aget-object v9, p1, v2

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 168
    aget-object v9, p1, v2

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    aget-object v9, p1, v2

    aget-object v10, p2, v2

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 171
    aget-object v9, p2, v2

    instance-of v9, v9, Lcn/sharesdk/onekeyshare/CustomerLogo;

    if-eqz v9, :cond_3

    .line 172
    aget-object v9, p2, v2

    invoke-static {v9}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/onekeyshare/CustomerLogo;

    .line 173
    .local v4, "logo":Lcn/sharesdk/onekeyshare/CustomerLogo;
    iget-object v9, v4, Lcn/sharesdk/onekeyshare/CustomerLogo;->logo:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 174
    iget-object v9, v4, Lcn/sharesdk/onekeyshare/CustomerLogo;->logo:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    :goto_2
    iget-object v9, v4, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 179
    iget-object v9, v4, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 176
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 181
    :cond_2
    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 184
    .end local v4    # "logo":Lcn/sharesdk/onekeyshare/CustomerLogo;
    :cond_3
    aget-object v9, p2, v2

    invoke-static {v9}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/sharesdk/framework/Platform;

    .line 185
    .local v6, "plat":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ssdk_oks_classic_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 187
    .local v7, "resId":I
    if-lez v7, :cond_4

    .line 188
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    :goto_3
    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ssdk_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 193
    if-lez v7, :cond_5

    .line 194
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 190
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 196
    :cond_5
    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 201
    .end local v3    # "ivLogo":Landroid/widget/ImageView;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "plat":Lcn/sharesdk/framework/Platform;
    .end local v7    # "resId":I
    .end local v8    # "tvName":Landroid/widget/TextView;
    :cond_6
    return-void
.end method


# virtual methods
.method protected abstract calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract collectCells(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public getBottomHeight()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->bottomHeight:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0
.end method

.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "index"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->createPanel(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 93
    :cond_0
    invoke-static {p2}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    .local v1, "llPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/LinearLayout;

    .line 95
    .local v0, "llCells":[Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-direct {p0, v0, v2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->refreshPanel([Landroid/widget/LinearLayout;[Ljava/lang/Object;)V

    .line 96
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 205
    .local v2, "time":J
    iget-wide v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lastClickTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 217
    :goto_0
    return-void

    .line 208
    :cond_0
    iput-wide v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lastClickTime:J

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcn/sharesdk/onekeyshare/CustomerLogo;

    if-eqz v4, :cond_1

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    .line 212
    .local v0, "logo":Lcn/sharesdk/onekeyshare/CustomerLogo;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v4, p1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->performCustomLogoClick(Landroid/view/View;Lcn/sharesdk/onekeyshare/CustomerLogo;)V

    goto :goto_0

    .line 214
    .end local v0    # "logo":Lcn/sharesdk/onekeyshare/CustomerLogo;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Platform;

    .line 215
    .local v1, "plat":Lcn/sharesdk/framework/Platform;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v4, v1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->showEditPage(Lcn/sharesdk/framework/Platform;)V

    goto :goto_0
.end method

.method public onScreenChange(II)V
    .locals 2
    .param p1, "currentScreen"    # I
    .param p2, "lastScreen"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->setScreenCount(I)V

    .line 84
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->onScreenChange(II)V

    .line 86
    :cond_0
    return-void
.end method

.method public setIndicator(Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;)V
    .locals 0
    .param p1, "view"    # Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    .prologue
    .line 78
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    .line 79
    return-void
.end method
