.class public Lcom/alipay/android/mini/uielement/aw;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/uielement/aw$a;
    }
.end annotation


# instance fields
.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/aw;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/uielement/aw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/aw;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/android/mini/uielement/aw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/uielement/aw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 33
    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/aw;->a(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 93
    iput-object p2, p0, Lcom/alipay/android/mini/uielement/aw;->f:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->f:Landroid/view/View;

    const-string v1, "mini_list"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->e:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->f:Landroid/view/View;

    const-string v1, "mini_list_mask"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/aw;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/alipay/android/mini/uielement/ax;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/mini/uielement/ax;-><init>(Lcom/alipay/android/mini/uielement/aw;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 125
    new-instance v1, Lcom/alipay/android/mini/uielement/aw$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/mini/uielement/aw$a;-><init>(Lcom/alipay/android/mini/uielement/aw;Lcom/alipay/android/mini/uielement/ax;)V

    .line 126
    iget-object v2, p0, Lcom/alipay/android/mini/uielement/aw;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/aw;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/alipay/android/mini/uielement/ay;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/uielement/ay;-><init>(Lcom/alipay/android/mini/uielement/aw;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/aw;->e:Landroid/widget/ListView;

    const-string v2, "mini_list_coner_bg"

    invoke-static {v2}, Lj/i;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "msp_dimen_40"

    invoke-static {v2}, Lj/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/aw;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    .line 138
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/aw;->a()Lcom/alipay/android/mini/uielement/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/i;->n()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, p1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/aw;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    .line 50
    :goto_0
    if-eqz v1, :cond_1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->h:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->g:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 54
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 55
    iget-object v3, p0, Lcom/alipay/android/mini/uielement/aw;->g:Ljava/util/List;

    const-string/jumbo v4, "text"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v3, p0, Lcom/alipay/android/mini/uielement/aw;->h:Ljava/util/List;

    const-string/jumbo v4, "val"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/aw;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->e:Landroid/widget/ListView;

    .line 83
    invoke-static {v0}, Lcom/alipay/android/mini/uielement/g;->a(Landroid/view/View;)V

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/aw;->x()Lorg/json/JSONObject;

    move-result-object v1

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/aw;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/aw;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/aw;->e:Landroid/widget/ListView;

    .line 195
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 77
    const-string v0, "mini_ui_select_button"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
