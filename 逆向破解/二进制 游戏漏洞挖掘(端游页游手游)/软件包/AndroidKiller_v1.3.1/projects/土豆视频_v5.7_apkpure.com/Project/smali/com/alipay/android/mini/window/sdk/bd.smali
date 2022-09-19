.class public Lcom/alipay/android/mini/window/sdk/bd;
.super Lcom/alipay/android/mini/window/sdk/a;
.source "SourceFile"


# instance fields
.field private A:Lcom/alipay/android/mini/window/sdk/h;

.field private z:Lcom/alipay/android/mini/uielement/m;


# direct methods
.method protected constructor <init>(Lb/e;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/a;-><init>(Lb/e;)V

    .line 49
    invoke-static {}, Lcom/alipay/android/mini/window/sdk/h;->a()Lcom/alipay/android/mini/window/sdk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->A:Lcom/alipay/android/mini/window/sdk/h;

    .line 50
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/bd;)Lcom/alipay/android/mini/window/sdk/h;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->A:Lcom/alipay/android/mini/window/sdk/h;

    return-object v0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->a:Lcom/alipay/android/mini/window/sdk/ak;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/ak;->a()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 134
    instance-of v1, v0, Lcom/alipay/android/mini/uielement/m;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 135
    check-cast v1, Lcom/alipay/android/mini/uielement/m;

    invoke-virtual {v1}, Lcom/alipay/android/mini/uielement/m;->I()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    check-cast v0, Lcom/alipay/android/mini/uielement/m;

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->z:Lcom/alipay/android/mini/uielement/m;

    .line 148
    :cond_1
    return-void

    .line 140
    :cond_2
    iget v1, p0, Lcom/alipay/android/mini/window/sdk/bd;->w:I

    if-lez v1, :cond_0

    .line 141
    instance-of v1, v0, Lcom/alipay/android/mini/uielement/c;

    if-eqz v1, :cond_0

    const-string/jumbo v3, "redpoint"

    move-object v1, v0

    check-cast v1, Lcom/alipay/android/mini/uielement/c;

    invoke-virtual {v1}, Lcom/alipay/android/mini/uielement/c;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    check-cast v0, Lcom/alipay/android/mini/uielement/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/uielement/c;->b(I)V

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bd;->z:Lcom/alipay/android/mini/uielement/m;

    if-eqz v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->z:Lcom/alipay/android/mini/uielement/m;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/m;->K()Landroid/view/View;

    move-result-object v0

    .line 205
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/window/sdk/be;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/sdk/be;-><init>(Lcom/alipay/android/mini/window/sdk/bd;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 236
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x11

    const/4 v5, -0x1

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/bd;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cashier-init"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    const-string v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->b(Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    move-object v0, p2

    .line 62
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 63
    const-string v1, "mini_win_background_draw"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 64
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 68
    const-string v3, "mini_activity_main"

    invoke-static {v3}, Lj/i;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 71
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/sdk/bd;->e:Z

    if-eqz v2, :cond_1

    .line 72
    const-string v2, "mini_scroll_layout"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alipay/android/mini/window/sdk/bd;->a(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 79
    const-string v4, "mini_root"

    invoke-static {v4}, Lj/i;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 80
    iget-boolean v4, p0, Lcom/alipay/android/mini/window/sdk/bd;->c:Z

    if-eqz v4, :cond_4

    .line 81
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 82
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 83
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 84
    const-string v0, "mini_page_bg_color"

    invoke-static {v0}, Lj/i;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "mini_win_background_draw"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 87
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 118
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 119
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v3

    .line 124
    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0, p1, v0}, Lcom/alipay/android/mini/window/sdk/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 125
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/bd;->u()V

    .line 127
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/bd;->v()V

    .line 129
    return-void

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/bd;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cashier-card-no"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_4
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    invoke-static {v4}, Lcom/alipay/android/mini/util/n;->f(Landroid/app/Activity;)I

    move-result v4

    .line 93
    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/bd;->x:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 94
    iget-object v4, p0, Lcom/alipay/android/mini/window/sdk/bd;->x:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    iget-object v8, p0, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    invoke-static {v8}, Lcom/alipay/android/mini/util/n;->b(Landroid/app/Activity;)I

    move-result v8

    invoke-static {v4, v5, v8}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v4

    .line 96
    :cond_5
    invoke-static {p1}, Lcom/alipay/android/mini/util/n;->e(Landroid/app/Activity;)I

    move-result v5

    .line 97
    iget-object v8, p0, Lcom/alipay/android/mini/window/sdk/bd;->y:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 98
    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/bd;->y:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    iget-object v9, p0, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    invoke-static {v9}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/alipay/android/mini/util/n;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v5

    .line 100
    :cond_6
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 101
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 102
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 103
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 104
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 106
    const-string v0, "mini_bg"

    invoke-static {v0}, Lj/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "mini_win_background_draw"

    invoke-static {v1}, Lj/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 109
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    instance-of v0, v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->e:Z

    if-nez v0, :cond_2

    move-object v0, v2

    .line 113
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_1
.end method

.method protected a(Lr/a;)Z
    .locals 4

    .prologue
    .line 178
    const/4 v1, 0x1

    .line 179
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/a;->c()Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lr/a;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 183
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->g()Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    instance-of v1, v0, Lcom/alipay/android/mini/uielement/c;

    if-eqz v1, :cond_1

    .line 185
    check-cast v0, Lcom/alipay/android/mini/uielement/c;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->C()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    const-string v1, "SPSafePay"

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/bd;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/alipay/android/mini/util/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/a;->i()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/bd;->t:Lcom/alipay/android/mini/uielement/f;

    .line 154
    return-void
.end method

.method protected q()Z
    .locals 3

    .prologue
    .line 162
    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/bd;->c()Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 165
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bd;->z:Lcom/alipay/android/mini/uielement/m;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/bd;->z:Lcom/alipay/android/mini/uielement/m;

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/uielement/m;->a(Z)V

    .line 173
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected r()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 241
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/a;->c()Ljava/util/List;

    move-result-object v1

    .line 242
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 243
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/j;

    .line 244
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/j;->h()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v1, v0}, Lj/g;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 246
    :cond_0
    return-object v1
.end method

.method protected t()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, -0x2

    return v0
.end method
