.class final Lcom/alipay/android/mini/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/k;

.field final synthetic b:[Lcom/alipay/android/mini/uielement/f;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/k;[Lcom/alipay/android/mini/uielement/f;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/alipay/android/mini/util/q;->a:Lcom/alipay/android/mini/window/sdk/k;

    iput-object p2, p0, Lcom/alipay/android/mini/util/q;->b:[Lcom/alipay/android/mini/uielement/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/alipay/android/mini/util/q;->a:Lcom/alipay/android/mini/window/sdk/k;

    iget-object v1, p0, Lcom/alipay/android/mini/util/q;->a:Lcom/alipay/android/mini/window/sdk/k;

    iget-object v2, p0, Lcom/alipay/android/mini/util/q;->b:[Lcom/alipay/android/mini/uielement/f;

    aget-object v2, v2, p2

    invoke-static {v2}, Lr/a;->a(Lcom/alipay/android/mini/uielement/f;)[Lr/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/mini/window/sdk/k;->a(Ljava/lang/Object;[Lr/a;)Z

    .line 560
    return-void
.end method
