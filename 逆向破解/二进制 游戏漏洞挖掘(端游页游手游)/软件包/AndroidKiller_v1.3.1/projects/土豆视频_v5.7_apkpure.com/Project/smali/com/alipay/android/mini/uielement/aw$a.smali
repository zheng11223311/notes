.class Lcom/alipay/android/mini/uielement/aw$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/mini/uielement/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/aw;


# direct methods
.method private constructor <init>(Lcom/alipay/android/mini/uielement/aw;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/aw$a;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/mini/uielement/aw;Lcom/alipay/android/mini/uielement/ax;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/uielement/aw$a;-><init>(Lcom/alipay/android/mini/uielement/aw;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw$a;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/aw;->c(Lcom/alipay/android/mini/uielement/aw;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw$a;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/aw;->c(Lcom/alipay/android/mini/uielement/aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw$a;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/aw;->c(Lcom/alipay/android/mini/uielement/aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw$a;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/aw;->c(Lcom/alipay/android/mini/uielement/aw;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/aw$a;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/aw;->c(Lcom/alipay/android/mini/uielement/aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/uielement/aw$a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 168
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 173
    .line 174
    if-eqz p2, :cond_0

    .line 181
    :goto_0
    const-string v0, "mini_select_button_text"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/uielement/aw$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/aw$a;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/aw;->q()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 184
    return-object p2

    .line 177
    :cond_0
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {v0}, Lh/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mini_ui_select_button_item"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method
