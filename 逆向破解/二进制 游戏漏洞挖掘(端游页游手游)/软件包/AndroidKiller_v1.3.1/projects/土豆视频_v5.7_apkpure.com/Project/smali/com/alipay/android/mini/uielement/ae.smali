.class Lcom/alipay/android/mini/uielement/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/widget/CustomEditText$b;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/z;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/z;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ae;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ae;->a:Lcom/alipay/android/mini/uielement/z;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/z;->a(Lcom/alipay/android/mini/uielement/z;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/n;->b(Landroid/widget/EditText;)V

    .line 254
    return-void
.end method
