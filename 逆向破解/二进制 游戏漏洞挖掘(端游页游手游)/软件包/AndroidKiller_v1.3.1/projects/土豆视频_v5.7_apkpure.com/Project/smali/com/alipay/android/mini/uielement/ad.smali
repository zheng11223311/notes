.class Lcom/alipay/android/mini/uielement/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$c;


# instance fields
.field final synthetic a:Lr/c;

.field final synthetic b:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;Lr/c;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ad;->b:Lcom/alipay/android/mini/uielement/z;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lr/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ad;->b:Lcom/alipay/android/mini/uielement/z;

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ad;->b:Lcom/alipay/android/mini/uielement/z;

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ad;->a:Lr/c;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/uielement/z;->a(Ljava/lang/Object;Lr/c;)V

    .line 766
    return-void
.end method
