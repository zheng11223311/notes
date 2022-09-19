.class Lcom/alipay/android/mini/window/sdk/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/ad;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/ad;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ae;->a:Lcom/alipay/android/mini/window/sdk/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ae;->a:Lcom/alipay/android/mini/window/sdk/ad;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/ad;->g:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ae;->a:Lcom/alipay/android/mini/window/sdk/ad;

    iget-object v1, v1, Lcom/alipay/android/mini/window/sdk/ad;->b:[Lr/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a([Lr/a;)V

    .line 130
    return-void
.end method
