.class public abstract Lcom/alipay/android/mini/uielement/a;
.super Lcom/alipay/android/mini/uielement/i;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/List;

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[I

.field private g:[I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/alipay/android/mini/uielement/f;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/i;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/a;->k:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->a:Ljava/util/List;

    .line 69
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->f:[I

    .line 70
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->g:[I

    .line 71
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/a;->h:Z

    .line 72
    iput-boolean v1, p0, Lcom/alipay/android/mini/uielement/a;->i:Z

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;Z)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 253
    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    invoke-static {p1}, Lcom/alipay/android/mini/util/b;->valueOf(Ljava/lang/String;)Lcom/alipay/android/mini/util/b;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/alipay/android/mini/util/b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 287
    :pswitch_0
    const/4 v1, 0x3

    .line 288
    const/16 v0, 0x9

    .line 293
    :goto_0
    if-eqz p2, :cond_0

    .line 297
    :goto_1
    return v0

    .line 260
    :pswitch_1
    const/4 v1, 0x5

    .line 261
    const/16 v0, 0xb

    .line 262
    goto :goto_0

    .line 265
    :pswitch_2
    const/16 v1, 0x30

    .line 266
    const/16 v0, 0xa

    .line 267
    goto :goto_0

    .line 270
    :pswitch_3
    const/16 v1, 0x50

    .line 271
    const/16 v0, 0xc

    .line 272
    goto :goto_0

    .line 275
    :pswitch_4
    const/4 v1, 0x1

    .line 276
    const/16 v0, 0xe

    .line 277
    goto :goto_0

    .line 280
    :pswitch_5
    const/16 v1, 0x10

    .line 281
    const/16 v0, 0xf

    .line 282
    goto :goto_0

    :cond_0
    move v0, v1

    .line 297
    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/a;)Lcom/alipay/android/mini/uielement/f;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->l:Lcom/alipay/android/mini/uielement/f;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;
    .locals 9

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 141
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/a;->j()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    .line 144
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/a;->h:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->g:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/a;->g:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/a;->g:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/alipay/android/mini/uielement/a;->g:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/android/mini/uielement/a;->b(IIII)V

    .line 147
    :cond_0
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 150
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-ge v2, v4, :cond_2

    .line 151
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 155
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, p3}, Lcom/alipay/android/mini/uielement/j;->b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 156
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->F()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1, v6, v0}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 150
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v1

    goto :goto_0

    .line 163
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_6

    .line 165
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 170
    const/4 v8, 0x1

    if-le v2, v8, :cond_5

    .line 171
    if-nez v1, :cond_3

    .line 172
    const-string v8, "mini_block_not_margin_top_bg"

    invoke-static {v8}, Lj/i;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    :goto_2
    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 173
    :cond_3
    add-int/lit8 v8, v2, -0x1

    if-ne v1, v8, :cond_4

    .line 174
    const-string v8, "mini_block_not_margin_bottom_bg"

    invoke-static {v8}, Lj/i;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 176
    :cond_4
    const-string v8, "mini_block_not_margin_middle_bg"

    invoke-static {v8}, Lj/i;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 179
    :cond_5
    const-string v8, "mini_input_bg"

    invoke-static {v8}, Lj/i;->e(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 183
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->f:[I

    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->f:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->f:[I

    const/4 v4, 0x3

    aget v4, v0, v4

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->f:[I

    const/4 v5, 0x2

    aget v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/view/ViewGroup$LayoutParams;IIII)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1, p3}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V

    .line 187
    if-eqz p3, :cond_a

    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;)I

    move-result v0

    .line 188
    :goto_3
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/a;->n:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/alipay/android/mini/util/n;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    .line 189
    if-nez v0, :cond_b

    .line 190
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 194
    :goto_4
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 195
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->o:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->l:Lcom/alipay/android/mini/uielement/f;

    if-eqz v0, :cond_8

    .line 203
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/mini/uielement/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/b;-><init>(Lcom/alipay/android/mini/uielement/a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 213
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/a;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 215
    :cond_9
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    return-object v0

    .line 187
    :cond_a
    :try_start_1
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->e(Landroid/app/Activity;)I

    move-result v0

    goto :goto_3

    .line 192
    :cond_b
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public a(IIII)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 221
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    .line 222
    invoke-direct {p0, p4, v0}, Lcom/alipay/android/mini/uielement/a;->a(Ljava/lang/String;Z)I

    move-result v1

    .line 223
    invoke-direct {p0, p3, v0}, Lcom/alipay/android/mini/uielement/a;->a(Ljava/lang/String;Z)I

    move-result v2

    .line 225
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 228
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    if-eqz p1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 240
    :cond_3
    if-eq v2, v5, :cond_4

    .line 241
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    :cond_4
    if-eq v1, v5, :cond_5

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 246
    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;IIII)V
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/a;->i:Z

    if-eqz v0, :cond_0

    .line 345
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 346
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 349
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 351
    :cond_2
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 352
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation
.end method

.method public a(Lcom/alipay/android/mini/uielement/j;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/i;->a(Lorg/json/JSONObject;)V

    .line 97
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->e:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->c:Ljava/lang/String;

    .line 99
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->j:Ljava/lang/String;

    .line 100
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->m:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->n:Ljava/lang/String;

    .line 105
    :cond_0
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->o:Ljava/lang/String;

    .line 108
    :cond_1
    const-string v0, "padding"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "margin"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    iput-boolean v3, p0, Lcom/alipay/android/mini/uielement/a;->h:Z

    .line 112
    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->d(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->g:[I

    .line 114
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    iput-boolean v3, p0, Lcom/alipay/android/mini/uielement/a;->i:Z

    .line 116
    invoke-static {v1}, Lcom/alipay/android/mini/util/n;->e(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->f:[I

    .line 119
    :cond_3
    const-string/jumbo v0, "together"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    const-string/jumbo v0, "together"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/a;->k:Z

    .line 122
    :cond_4
    const-string v0, "action"

    invoke-static {p1, v0}, Lcom/alipay/android/mini/uielement/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/mini/uielement/f;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/a;->l:Lcom/alipay/android/mini/uielement/f;

    .line 124
    return-void
.end method

.method public synthetic b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/mini/uielement/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected b(IIII)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 360
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/a;->k:Z

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 365
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->i()V

    goto :goto_0

    .line 367
    :cond_0
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/a;->b:Landroid/view/ViewGroup;

    .line 368
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/a;->a:Ljava/util/List;

    .line 369
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->d:Lr/h;

    if-eqz v0, :cond_1

    .line 370
    iput-object v2, p0, Lcom/alipay/android/mini/uielement/a;->d:Lr/h;

    .line 372
    :cond_1
    return-void
.end method

.method protected abstract j()I
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/a;->o:Ljava/lang/String;

    return-object v0
.end method
