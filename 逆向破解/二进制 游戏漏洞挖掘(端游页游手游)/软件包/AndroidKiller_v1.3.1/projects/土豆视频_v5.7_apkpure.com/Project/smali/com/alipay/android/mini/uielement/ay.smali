.class Lcom/alipay/android/mini/uielement/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/aw;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/aw;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ay;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ay;->a:Lcom/alipay/android/mini/uielement/aw;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ay;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/aw;->b(Lcom/alipay/android/mini/uielement/aw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/mini/uielement/aw;->a(Lcom/alipay/android/mini/uielement/aw;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ay;->a:Lcom/alipay/android/mini/uielement/aw;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ay;->a:Lcom/alipay/android/mini/uielement/aw;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ay;->a:Lcom/alipay/android/mini/uielement/aw;

    invoke-virtual {v2}, Lcom/alipay/android/mini/uielement/aw;->p()Lcom/alipay/android/mini/uielement/f;

    move-result-object v2

    invoke-static {v2}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/aw;->a(Ljava/lang/Object;[Lr/a;)V

    .line 134
    return-void
.end method
