.class public Lcom/youku/widget/HintView;
.super Landroid/widget/RelativeLayout;
.source "HintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/HintView$1;,
        Lcom/youku/widget/HintView$Type;
    }
.end annotation


# static fields
.field public static final CACHE_EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u5feb\u6765\u7f13\u5b58\u4f60\u559c\u6b22\u7684\u89c6\u9891\u5427"

.field public static final DETAILED_COMMENT_TEXT:Ljava/lang/String; = "\u5c0f\u571f\u8c46\u9080\u8bf7\u60a8\u6765\u8bc4\u8bba\u54e6~"

.field public static final EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u6682\u65e0\u6570\u636e"

.field public static final FAVORITE_PLAY_LIST_EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u6682\u65e0\u6536\u85cf\u680f\u76ee"

.field public static final FAVORITE_VIDEO_EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u5feb\u6765\u6536\u85cf\u4f60\u559c\u6b22\u7684\u89c6\u9891\u5427"

.field public static final HISTORY_EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u6ca1\u6709\u53d1\u73b0\u4f60\u7684\u8db3\u8ff9"

.field public static final LOAD_FAILED_TEXT:Ljava/lang/String; = "\u8d70\u795e\u5566\uff0c\u70b9\u51fb\u5c4f\u5e55\u91cd\u8bd5"

.field public static final LOGIN_BUT_TEXT:Ljava/lang/String; = "\u767b\u5f55"

.field public static final LOGIN_HINT_TEXT:Ljava/lang/String; = "\u767b\u5f55\u624d\u80fd\u67e5\u770b\u54e6"

.field public static final MESSAGE_EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u6682\u672a\u6536\u5230\u4efb\u4f55\u6d88\u606f"

.field public static final ONLY_TEXT_TEXT:Ljava/lang/String; = "\u6682\u65f6\u6ca1\u6709\u4f60\u60f3\u8981\u7684"

.field public static final SUBSCRIBE_EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u5feb\u6765\u8ba2\u9605\u4f60\u559c\u6b22\u7684\u680f\u76ee\u5427"

.field public static final SUBSCRIBE_UPDATE_EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u6682\u65e0\u8ba2\u9605\u63a8\u8350\u5185\u5bb9"

.field public static final TEXT_AND_BUT_BUT_TEXT:Ljava/lang/String; = "\u91cd\u8bd5\u4e00\u4e0b"

.field public static final TEXT_AND_BUT_TEXT:Ljava/lang/String; = "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u68c0\u67e5\u4e00\u4e0b\u5427"

.field public static final UPLOAD_EMPTY_PAGE_TEXT:Ljava/lang/String; = "\u8fd9\u91cc\u7a7a\u7a7a\u7684\uff0c\u6765\u70b9\u81ea\u5df1\u7684"


# instance fields
.field private currentType:Lcom/youku/widget/HintView$Type;

.field private mHintBut:Landroid/widget/Button;

.field private mHintImage:Landroid/widget/ImageView;

.field private mHintText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    iput-object v0, p0, Lcom/youku/widget/HintView;->currentType:Lcom/youku/widget/HintView$Type;

    .line 68
    invoke-direct {p0, p1}, Lcom/youku/widget/HintView;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    sget-object v0, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    iput-object v0, p0, Lcom/youku/widget/HintView;->currentType:Lcom/youku/widget/HintView$Type;

    .line 73
    invoke-direct {p0, p1}, Lcom/youku/widget/HintView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private getShowImageId(Lcom/youku/widget/HintView$Type;)I
    .locals 3
    .param p1, "type"    # Lcom/youku/widget/HintView$Type;

    .prologue
    .line 221
    iget-object v1, p0, Lcom/youku/widget/HintView;->mHintImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 222
    iget-object v1, p0, Lcom/youku/widget/HintView;->mHintImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :cond_0
    const/4 v0, -0x1

    .line 226
    .local v0, "imageId":I
    sget-object v1, Lcom/youku/widget/HintView$1;->$SwitchMap$com$youku$widget$HintView$Type:[I

    invoke-virtual {p1}, Lcom/youku/widget/HintView$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 262
    :goto_0
    :pswitch_0
    return v0

    .line 228
    :pswitch_1
    const v0, 0x7f020554

    .line 229
    goto :goto_0

    .line 232
    :pswitch_2
    const v0, 0x7f020221

    .line 233
    goto :goto_0

    .line 235
    :pswitch_3
    const v0, 0x7f02037c

    .line 236
    goto :goto_0

    .line 238
    :pswitch_4
    const v0, 0x7f02025c

    .line 239
    goto :goto_0

    .line 242
    :pswitch_5
    const v0, 0x7f020585

    .line 243
    goto :goto_0

    .line 246
    :pswitch_6
    const v0, 0x7f020a12

    .line 247
    goto :goto_0

    .line 249
    :pswitch_7
    const v0, 0x7f0200c8

    .line 250
    goto :goto_0

    .line 252
    :pswitch_8
    const v0, 0x7f0208b9

    .line 253
    goto :goto_0

    .line 255
    :pswitch_9
    const v0, 0x7f0201db

    .line 256
    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method private getShowText(Lcom/youku/widget/HintView$Type;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Lcom/youku/widget/HintView$Type;

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "hintText":Ljava/lang/String;
    sget-object v1, Lcom/youku/widget/HintView$1;->$SwitchMap$com$youku$widget$HintView$Type:[I

    invoke-virtual {p1}, Lcom/youku/widget/HintView$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 183
    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    const-string/jumbo v0, "\u8d70\u795e\u5566\uff0c\u70b9\u51fb\u5c4f\u5e55\u91cd\u8bd5"

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    const-string/jumbo v0, "\u6682\u65e0\u6570\u636e"

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    const-string/jumbo v0, "\u6ca1\u6709\u53d1\u73b0\u4f60\u7684\u8db3\u8ff9"

    .line 147
    goto :goto_0

    .line 149
    :pswitch_3
    const-string/jumbo v0, "\u5feb\u6765\u6536\u85cf\u4f60\u559c\u6b22\u7684\u89c6\u9891\u5427"

    .line 150
    goto :goto_0

    .line 152
    :pswitch_4
    const-string/jumbo v0, "\u6682\u65e0\u6536\u85cf\u680f\u76ee"

    .line 153
    goto :goto_0

    .line 155
    :pswitch_5
    const-string/jumbo v0, "\u6682\u672a\u6536\u5230\u4efb\u4f55\u6d88\u606f"

    .line 156
    goto :goto_0

    .line 158
    :pswitch_6
    const-string/jumbo v0, "\u8fd9\u91cc\u7a7a\u7a7a\u7684\uff0c\u6765\u70b9\u81ea\u5df1\u7684"

    .line 159
    goto :goto_0

    .line 161
    :pswitch_7
    const-string/jumbo v0, "\u5feb\u6765\u7f13\u5b58\u4f60\u559c\u6b22\u7684\u89c6\u9891\u5427"

    .line 162
    goto :goto_0

    .line 164
    :pswitch_8
    const-string/jumbo v0, "\u5feb\u6765\u8ba2\u9605\u4f60\u559c\u6b22\u7684\u680f\u76ee\u5427"

    .line 165
    goto :goto_0

    .line 167
    :pswitch_9
    const-string/jumbo v0, "\u6682\u65e0\u8ba2\u9605\u63a8\u8350\u5185\u5bb9"

    .line 168
    goto :goto_0

    .line 170
    :pswitch_a
    const-string/jumbo v0, "\u6682\u65f6\u6ca1\u6709\u4f60\u60f3\u8981\u7684"

    .line 171
    goto :goto_0

    .line 173
    :pswitch_b
    const-string/jumbo v0, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u68c0\u67e5\u4e00\u4e0b\u5427"

    .line 174
    goto :goto_0

    .line 177
    :pswitch_c
    const-string/jumbo v0, "\u767b\u5f55\u624d\u80fd\u67e5\u770b\u54e6"

    .line 178
    goto :goto_0

    .line 180
    :pswitch_d
    const-string/jumbo v0, "\u5c0f\u571f\u8c46\u9080\u8bf7\u60a8\u6765\u8bc4\u8bba\u54e6~"

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 78
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03006b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "child":Landroid/view/View;
    const v2, 0x7f0c024c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/widget/HintView;->mHintImage:Landroid/widget/ImageView;

    .line 80
    const v2, 0x7f0c024d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/widget/HintView;->mHintText:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0c024e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    .line 82
    invoke-virtual {p0, v0}, Lcom/youku/widget/HintView;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method private setButState(Lcom/youku/widget/HintView$Type;)V
    .locals 3
    .param p1, "type"    # Lcom/youku/widget/HintView$Type;

    .prologue
    const/16 v2, 0x8

    .line 189
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 190
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    :cond_0
    sget-object v0, Lcom/youku/widget/HintView$1;->$SwitchMap$com$youku$widget$HintView$Type:[I

    invoke-virtual {p1}, Lcom/youku/widget/HintView$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 209
    :pswitch_1
    const-string/jumbo v0, "\u767b\u5f55"

    invoke-virtual {p0, v0}, Lcom/youku/widget/HintView;->setHintButText(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_2
    const-string/jumbo v0, "\u91cd\u8bd5\u4e00\u4e0b"

    invoke-virtual {p0, v0}, Lcom/youku/widget/HintView;->setHintButText(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDataState(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/youku/widget/HintView$Type;
    .param p2, "hintText"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/youku/widget/HintView;->getShowImageId(Lcom/youku/widget/HintView$Type;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youku/widget/HintView;->setHintImage(I)V

    .line 126
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/youku/widget/HintView;->getShowText(Lcom/youku/widget/HintView$Type;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "hintText":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/youku/widget/HintView;->setHintText(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/youku/widget/HintView;->setButState(Lcom/youku/widget/HintView$Type;)V

    .line 130
    invoke-virtual {p0}, Lcom/youku/widget/HintView;->show()V

    .line 132
    iput-object p1, p0, Lcom/youku/widget/HintView;->currentType:Lcom/youku/widget/HintView$Type;

    .line 133
    return-void
.end method

.method private setHintImage(I)V
    .locals 2
    .param p1, "imageId"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 93
    invoke-virtual {p0}, Lcom/youku/widget/HintView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public getHintButText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHintImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHintType()Lcom/youku/widget/HintView$Type;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/youku/widget/HintView;->currentType:Lcom/youku/widget/HintView$Type;

    return-object v0
.end method

.method public getmHintBut()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 267
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/youku/widget/HintView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 269
    return-void
.end method

.method public setButOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "mClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    :cond_0
    return-void
.end method

.method public setButVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    :cond_0
    return-void
.end method

.method public setHintButText(Ljava/lang/String;)V
    .locals 1
    .param p1, "textStr"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintBut:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_0
    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1
    .param p1, "textStr"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/youku/widget/HintView;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/youku/widget/HintView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public showView(Lcom/youku/widget/HintView$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/youku/widget/HintView$Type;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/youku/widget/HintView;->getShowText(Lcom/youku/widget/HintView$Type;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "hintText":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public showView(Lcom/youku/widget/HintView$Type;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "type"    # Lcom/youku/widget/HintView$Type;
    .param p2, "mButOnClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/HintView;->setDataState(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/youku/widget/HintView;->setButOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/youku/widget/HintView$Type;
    .param p2, "hintText"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/HintView;->setDataState(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public showView(Lcom/youku/widget/HintView$Type;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "type"    # Lcom/youku/widget/HintView$Type;
    .param p2, "hintText"    # Ljava/lang/String;
    .param p3, "mClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/HintView;->setDataState(Lcom/youku/widget/HintView$Type;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p3}, Lcom/youku/widget/HintView;->setButOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method
