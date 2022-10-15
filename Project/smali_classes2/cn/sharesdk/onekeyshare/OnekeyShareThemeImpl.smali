.class public abstract Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;
.super Ljava/lang/Object;
.source "OnekeyShareThemeImpl.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field protected callback:Lcn/sharesdk/framework/PlatformActionListener;

.field protected context:Landroid/content/Context;

.field protected customerLogos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field protected customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

.field protected dialogMode:Z

.field protected disableSSO:Z

.field protected hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected silent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 52
    return-void
.end method

.method private prepareForEditPage(Lcn/sharesdk/framework/Platform;)V
    .locals 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->formateShareData(Lcn/sharesdk/framework/Platform;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    .line 170
    .local v0, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    if-eqz v0, :cond_1

    .line 172
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 173
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    invoke-interface {v1, p1, v0}, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;->onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, v0}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 179
    .end local v0    # "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    :cond_1
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "resOrName"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v0, 0x0

    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;

    invoke-direct {v1, p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl$1;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    .line 334
    return-void
.end method


# virtual methods
.method public final disableSSO()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    .line 84
    return-void
.end method

.method final formateShareData(Lcn/sharesdk/framework/Platform;)Z
    .locals 20
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 182
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "name":Ljava/lang/String;
    const-string v17, "Alipay"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 185
    .local v4, "isAlipay":Z
    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_0

    .line 186
    const-string v17, "ssdk_alipay_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 187
    const/16 v17, 0x0

    .line 292
    :goto_0
    return v17

    .line 190
    :cond_0
    const-string v17, "KakaoTalk"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 191
    .local v6, "isKakaoTalk":Z
    if-eqz v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_1

    .line 192
    const-string v17, "ssdk_kakaotalk_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 193
    const/16 v17, 0x0

    goto :goto_0

    .line 196
    :cond_1
    const-string v17, "KakaoStory"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 197
    .local v5, "isKakaoStory":Z
    if-eqz v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_2

    .line 198
    const-string v17, "ssdk_kakaostory_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 199
    const/16 v17, 0x0

    goto :goto_0

    .line 202
    :cond_2
    const-string v17, "Line"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 203
    .local v9, "isLine":Z
    if-eqz v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_3

    .line 204
    const-string v17, "ssdk_line_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 205
    const/16 v17, 0x0

    goto :goto_0

    .line 208
    :cond_3
    const-string v17, "WhatsApp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 209
    .local v12, "isWhatsApp":Z
    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_4

    .line 210
    const-string v17, "ssdk_whatsapp_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 211
    const/16 v17, 0x0

    goto :goto_0

    .line 214
    :cond_4
    const-string v17, "Pinterest"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 215
    .local v10, "isPinterest":Z
    if-eqz v10, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_5

    .line 216
    const-string v17, "ssdk_pinterest_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 217
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 220
    :cond_5
    const-string v17, "Instagram"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_6

    .line 221
    const-string v17, "ssdk_instagram_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 222
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 225
    :cond_6
    const-string v17, "Laiwang"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 226
    .local v7, "isLaiwang":Z
    const-string v17, "LaiwangMoments"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 227
    .local v8, "isLaiwangMoments":Z
    if-nez v7, :cond_7

    if-eqz v8, :cond_8

    .line 228
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_8

    .line 229
    const-string v17, "ssdk_laiwang_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 230
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 234
    :cond_8
    const-string v17, "YixinMoments"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "Yixin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    const/4 v13, 0x1

    .line 235
    .local v13, "isYixin":Z
    :goto_1
    if-eqz v13, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_b

    .line 236
    const-string v17, "ssdk_yixin_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 237
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 234
    .end local v13    # "isYixin":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_1

    .line 240
    .restart local v13    # "isYixin":Z
    :cond_b
    const-string v17, "WechatFavorite"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    const-string v17, "Wechat"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    const-string v17, "WechatMoments"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_c
    const/4 v11, 0x1

    .line 241
    .local v11, "isWechat":Z
    :goto_2
    if-eqz v11, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_e

    .line 242
    const-string v17, "ssdk_wechat_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 243
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 240
    .end local v11    # "isWechat":Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_2

    .line 246
    .restart local v11    # "isWechat":Z
    :cond_e
    const-string v17, "FacebookMessenger"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v17

    if-nez v17, :cond_f

    .line 247
    const-string v17, "ssdk_facebookmessenger_client_inavailable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 248
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 251
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "shareType"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 252
    const/4 v15, 0x1

    .line 253
    .local v15, "shareType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "imagePath"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "imagePath":Ljava/lang/String;
    if-eqz v2, :cond_13

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 255
    const/4 v15, 0x2

    .line 256
    const-string v17, ".gif"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    if-eqz v11, :cond_12

    .line 257
    const/16 v15, 0x9

    .line 289
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "shareType"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v2    # "imagePath":Ljava/lang/String;
    .end local v15    # "shareType":I
    :cond_11
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 258
    .restart local v2    # "imagePath":Ljava/lang/String;
    .restart local v15    # "shareType":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 259
    const/4 v15, 0x4

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    if-eqz v11, :cond_10

    .line 261
    const/4 v15, 0x5

    goto :goto_3

    .line 265
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "viewToShare"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    .line 266
    .local v16, "viewToShare":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_14

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_14

    .line 267
    const/4 v15, 0x2

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 269
    const/4 v15, 0x4

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    if-eqz v11, :cond_10

    .line 271
    const/4 v15, 0x5

    goto/16 :goto_3

    .line 275
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "imageUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 276
    .local v3, "imageUrl":Ljava/lang/Object;
    if-eqz v3, :cond_10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 277
    const/4 v15, 0x2

    .line 278
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ".gif"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_15

    if-eqz v11, :cond_15

    .line 279
    const/16 v15, 0x9

    goto/16 :goto_3

    .line 280
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 281
    const/4 v15, 0x4

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "musicUrl"

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    if-eqz v11, :cond_10

    .line 283
    const/4 v15, 0x5

    goto/16 :goto_3
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 374
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 421
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 377
    :pswitch_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    const-string v3, "ssdk_oks_share_completed"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 378
    .local v1, "resId":I
    if-lez v1, :cond_0

    .line 379
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v1    # "resId":I
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "expName":Ljava/lang/String;
    const-string v2, "WechatClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WechatTimelineNotSupportedException"

    .line 387
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "WechatFavoriteNotSupportedException"

    .line 388
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    :cond_1
    const-string v2, "ssdk_wechat_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    const-string v2, "GooglePlusClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    const-string v2, "ssdk_google_plus_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_3
    const-string v2, "QQClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 393
    const-string v2, "ssdk_qq_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_4
    const-string v2, "YixinClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "YixinTimelineNotSupportedException"

    .line 395
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 396
    :cond_5
    const-string v2, "ssdk_yixin_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_6
    const-string v2, "KakaoTalkClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 398
    const-string v2, "ssdk_kakaotalk_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_7
    const-string v2, "KakaoStoryClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 400
    const-string v2, "ssdk_kakaostory_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_8
    const-string v2, "WhatsAppClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 402
    const-string v2, "ssdk_whatsapp_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_9
    const-string v2, "FacebookMessengerClientNotExistException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 404
    const-string v2, "ssdk_facebookmessenger_client_inavailable"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_a
    const-string v2, "ssdk_oks_share_failed"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    .end local v0    # "expName":Ljava/lang/String;
    :pswitch_2
    const-string v2, "ssdk_oks_share_canceled"

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z
    .locals 7
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "name":Ljava/lang/String;
    const-string v5, "Wechat"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "WechatMoments"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "WechatFavorite"

    .line 113
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ShortMessage"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Email"

    .line 114
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GooglePlus"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "QQ"

    .line 115
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Pinterest"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Instagram"

    .line 116
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Yixin"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "YixinMoments"

    .line 117
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "QZone"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Mingdao"

    .line 118
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Line"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "KakaoStory"

    .line 119
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "KakaoTalk"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Bluetooth"

    .line 120
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "WhatsApp"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BaiduTieba"

    .line 121
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Laiwang"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "LaiwangMoments"

    .line 122
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Alipay"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "FacebookMessenger"

    .line 123
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v3

    .line 126
    :cond_1
    const-string v5, "Evernote"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    const-string v5, "true"

    const-string v6, "ShareByAppClient"

    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    .line 147
    goto :goto_0

    .line 130
    :cond_3
    const-string v5, "SinaWeibo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    const-string v5, "true"

    const-string v6, "ShareByAppClient"

    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "test":Landroid/content/Intent;
    const-string v5, "com.sina.weibo"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v5, "image/*"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 137
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v1, :cond_4

    .line 138
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "test":Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .restart local v2    # "test":Landroid/content/Intent;
    const-string v5, "com.sina.weibog3"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v5, "image/*"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 143
    :cond_4
    if-nez v1, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 363
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 364
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 365
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 366
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 370
    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 371
    return-void
.end method

.method public final onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 343
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 344
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 345
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 346
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 347
    return-void
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 350
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 352
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 353
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 354
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 355
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 359
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 360
    return-void
.end method

.method public final setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "customerLogos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customerLogos:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public final setDialogMode(Z)V
    .locals 0
    .param p1, "dialogMode"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->dialogMode:Z

    .line 56
    return-void
.end method

.method public final setHiddenPlatforms(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "hiddenPlatforms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->hiddenPlatforms:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method public final setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0
    .param p1, "callback"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 75
    if-nez p1, :cond_0

    move-object p1, p0

    .end local p1    # "callback":Lcn/sharesdk/framework/PlatformActionListener;
    :cond_0
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 76
    return-void
.end method

.method public final setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 0
    .param p1, "customizeCallback"    # Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .line 80
    return-void
.end method

.method public final setShareParamsMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "shareParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method public final setSilent(Z)V
    .locals 0
    .param p1, "silent"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->silent:Z

    .line 64
    return-void
.end method

.method final shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;
    .locals 10
    .param p1, "plat"    # Lcn/sharesdk/framework/Platform;

    .prologue
    const/4 v6, 0x0

    .line 296
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 297
    :cond_0
    const-string v7, "ssdk_oks_share_failed"

    invoke-direct {p0, v7}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 319
    :goto_0
    return-object v6

    .line 302
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v8, "imagePath"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    .local v1, "imagePath":Ljava/lang/String;
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v8, "viewToShare"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 304
    .local v5, "viewToShare":Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 305
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "screenshot"

    invoke-static {v7, v8}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v3, "ss":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v0, "fos":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v5, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 309
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 310
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 311
    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v8, "imagePath"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "ss":Ljava/io/File;
    :cond_2
    new-instance v6, Lcn/sharesdk/framework/Platform$ShareParams;

    iget-object v7, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    invoke-direct {v6, v7}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>(Ljava/util/HashMap;)V

    goto :goto_0

    .line 313
    .end local v1    # "imagePath":Ljava/lang/String;
    .end local v5    # "viewToShare":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 314
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    const-string v7, "ssdk_oks_share_failed"

    invoke-direct {p0, v7}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method final shareSilently(Lcn/sharesdk/framework/Platform;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->formateShareData(Lcn/sharesdk/framework/Platform;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareDataToShareParams(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v0

    .line 153
    .local v0, "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    if-eqz v0, :cond_2

    .line 154
    const-string v1, "ssdk_oks_sharing"

    invoke-direct {p0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->toast(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    invoke-interface {v1, p1, v0}, Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;->onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 158
    :cond_0
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    if-eqz v1, :cond_1

    .line 159
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->disableSSO:Z

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 162
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 165
    .end local v0    # "sp":Lcn/sharesdk/framework/Platform$ShareParams;
    :cond_2
    return-void
.end method

.method public final show(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->context:Landroid/content/Context;

    .line 92
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v5, "platform"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareParamsMap:Ljava/util/HashMap;

    const-string v5, "platform"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    .line 95
    .local v3, "platform":Lcn/sharesdk/framework/Platform;
    instance-of v0, v3, Lcn/sharesdk/framework/CustomPlatform;

    .line 96
    .local v0, "isCustomPlatform":Z
    invoke-virtual {p0, v3}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->isUseClientToShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v1

    .line 97
    .local v1, "isUseClientToShare":Z
    iget-boolean v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->silent:Z

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    invoke-virtual {p0, v3}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->shareSilently(Lcn/sharesdk/framework/Platform;)V

    .line 105
    .end local v0    # "isCustomPlatform":Z
    .end local v1    # "isUseClientToShare":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "platform":Lcn/sharesdk/framework/Platform;
    :goto_0
    return-void

    .line 100
    .restart local v0    # "isCustomPlatform":Z
    .restart local v1    # "isUseClientToShare":Z
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "platform":Lcn/sharesdk/framework/Platform;
    :cond_1
    invoke-direct {p0, v3}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->prepareForEditPage(Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 103
    .end local v0    # "isCustomPlatform":Z
    .end local v1    # "isUseClientToShare":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "platform":Lcn/sharesdk/framework/Platform;
    :cond_2
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;->showPlatformPage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected abstract showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
.end method

.method protected abstract showPlatformPage(Landroid/content/Context;)V
.end method
