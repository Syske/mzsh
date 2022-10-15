.class public Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;
.super Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
.source "EditPagePort.java"


# static fields
.field private static final DESIGN_BOTTOM_HEIGHT:I = 0x4b

.field private static final DESIGN_LEFT_PADDING:I = 0x28

.field private static final DESIGN_REMOVE_THUMB_HEIGHT:I = 0x46

.field private static final DESIGN_SCREEN_HEIGHT:I = 0x500

.field private static final DESIGN_THUMB_HEIGHT:I = 0x12c

.field private static final DESIGN_TITLE_HEIGHT:I = 0x60


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0
    .param p1, "impl"    # Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->thumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private initBody(Landroid/widget/RelativeLayout;F)V
    .locals 12
    .param p1, "rlBody"    # Landroid/widget/RelativeLayout;
    .param p2, "ratio"    # F

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 126
    new-instance v6, Landroid/widget/ScrollView;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->svContent:Landroid/widget/ScrollView;

    .line 127
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->svContent:Landroid/widget/ScrollView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "llContent":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->svContent:Landroid/widget/ScrollView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    .line 134
    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v6, p2

    float-to-int v2, v6

    .line 135
    .local v2, "padding":I
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 136
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    const v7, -0xc4c4c5

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 138
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    const/4 v7, 0x2

    const/high16 v8, 0x41a80000    # 21.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 139
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    .line 145
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    const v7, -0xcececf

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 146
    const/high16 v6, 0x43960000    # 300.0f

    mul-float/2addr v6, p2

    float-to-int v4, v6

    .line 147
    .local v4, "thumbWidth":I
    const/high16 v6, 0x428c0000    # 70.0f

    mul-float/2addr v6, p2

    float-to-int v5, v6

    .line 148
    .local v5, "xWidth":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 150
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v6, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, p0, v7}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    .line 158
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v6, v11}, Lcom/mob/tools/gui/AsyncImageView;->setScaleToCropCenter(Z)V

    .line 159
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v3, "rllp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v6, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v6, p0}, Lcom/mob/tools/gui/AsyncImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-direct {p0, v6}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initThumb(Lcom/mob/tools/gui/AsyncImageView;)V

    .line 164
    new-instance v6, Lcn/sharesdk/onekeyshare/themes/classic/XView;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcn/sharesdk/onekeyshare/themes/classic/XView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    .line 165
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {v6, p2}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->setRatio(F)V

    .line 166
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3    # "rllp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .restart local v3    # "rllp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {v6, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {v6, p0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method private initBottom(Landroid/widget/LinearLayout;F)V
    .locals 10
    .param p1, "llBottom"    # Landroid/widget/LinearLayout;
    .param p2, "ratio"    # F

    .prologue
    .line 174
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v1, "llAt":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 176
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 177
    const/high16 v6, 0x42960000    # 75.0f

    mul-float/2addr v6, p2

    float-to-int v0, v6

    .line 178
    .local v0, "bottomHeight":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v2, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    .line 182
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const v7, -0xc4c4c5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const/high16 v6, 0x42200000    # 40.0f

    mul-float/2addr v6, p2

    float-to-int v3, v6

    .line 187
    .local v3, "padding":I
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 188
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :goto_0
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    .line 198
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    const v7, -0xc4c4c5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    const/4 v7, 0x2

    const/high16 v8, 0x41a80000    # 21.0f

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 200
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    const/16 v7, 0x55

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->etContent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 202
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v7, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 203
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 205
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 208
    .local v5, "v":Landroid/view/View;
    const v6, -0x333334

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 209
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p2, v6

    if-lez v6, :cond_1

    float-to-int v4, p2

    .line 210
    .local v4, "px_1":I
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x1

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void

    .line 194
    .end local v4    # "px_1":I
    .end local v5    # "v":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvAt:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 209
    .restart local v5    # "v":Landroid/view/View;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private initShadow(Landroid/widget/LinearLayout;F)V
    .locals 4
    .param p1, "llShadow"    # Landroid/widget/LinearLayout;
    .param p2, "ratio"    # F

    .prologue
    .line 215
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    float-to-int v1, p2

    .line 216
    .local v1, "px_1":I
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 218
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 219
    .local v2, "v":Landroid/view/View;
    const/high16 v3, 0x29000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 220
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v2, Landroid/view/View;

    .end local v2    # "v":Landroid/view/View;
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 223
    .restart local v2    # "v":Landroid/view/View;
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 224
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v2, Landroid/view/View;

    .end local v2    # "v":Landroid/view/View;
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 227
    .restart local v2    # "v":Landroid/view/View;
    const/high16 v3, 0x7000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 228
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    return-void

    .line 215
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "px_1":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initThumb(Lcom/mob/tools/gui/AsyncImageView;)V
    .locals 8
    .param p1, "aivThumb"    # Lcom/mob/tools/gui/AsyncImageView;

    .prologue
    const/4 v7, 0x0

    .line 232
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "imageUrl":Ljava/lang/String;
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "imagePath":Ljava/lang/String;
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "imageArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 237
    .local v4, "pic":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 238
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    :try_start_0
    invoke-static {v2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 246
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 247
    iput-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->thumb:Landroid/graphics/Bitmap;

    .line 248
    invoke-virtual {p1, v4}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 260
    iput-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->thumb:Landroid/graphics/Bitmap;

    .line 261
    invoke-virtual {p1, v4}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    :goto_2
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 250
    aget-object v5, v1, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    aget-object v6, v1, v7

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    :try_start_1
    invoke-static {v2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_1

    .line 253
    :catch_1
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 262
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 263
    invoke-virtual {p1, v3, v7}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2

    .line 265
    :cond_4
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private initTitle(Landroid/widget/RelativeLayout;F)V
    .locals 11
    .param p1, "rlTitle"    # Landroid/widget/RelativeLayout;
    .param p2, "ratio"    # F

    .prologue
    const/16 v10, 0x11

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 84
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    const v5, -0xc4c4c5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_cancel"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 90
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :cond_0
    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr v4, p2

    float-to-int v1, v4

    .line 93
    .local v1, "padding":I
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v3, "tvTitle":Landroid/widget/TextView;
    const v4, -0xc4c4c5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_multi_share"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 103
    if-lez v2, :cond_1

    .line 104
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 106
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    .line 111
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    const v5, -0x92ef

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_share"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 115
    if-lez v2, :cond_2

    .line 116
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    :cond_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 46
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->onCreate()V

    .line 48
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/mob/tools/utils/R;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    .line 49
    .local v4, "screenHeight":I
    int-to-float v6, v4

    const/high16 v7, 0x44a00000    # 1280.0f

    div-float v2, v6, v7

    .line 51
    .local v2, "ratio":F
    const/4 v6, 0x0

    iput v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->maxBodyHeight:I

    .line 53
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    .line 54
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 57
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlTitle:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlTitle:Landroid/widget/RelativeLayout;

    const v7, -0x191614

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 59
    const/high16 v6, 0x42c00000    # 96.0f

    mul-float/2addr v6, v2

    float-to-int v5, v6

    .line 61
    .local v5, "titleHeight":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v6, v2}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initTitle(Landroid/widget/RelativeLayout;F)V

    .line 65
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v3, "rlBody":Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 67
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-direct {p0, v3, v2}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initBody(Landroid/widget/RelativeLayout;F)V

    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "llShadow":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-direct {p0, v0, v2}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initShadow(Landroid/widget/LinearLayout;F)V

    .line 76
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llBottom:Landroid/widget/LinearLayout;

    .line 77
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llPage:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->llBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v2}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initBottom(Landroid/widget/LinearLayout;F)V

    .line 81
    return-void
.end method
