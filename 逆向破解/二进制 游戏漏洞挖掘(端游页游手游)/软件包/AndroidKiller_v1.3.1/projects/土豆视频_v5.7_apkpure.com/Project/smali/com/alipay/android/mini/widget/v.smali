.class final Lcom/alipay/android/mini/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

.field final synthetic b:Lcom/alipay/android/mini/window/sdk/ba$a;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Lcom/alipay/android/mini/window/sdk/ba$a;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/android/mini/widget/v;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/widget/v;->b:Lcom/alipay/android/mini/window/sdk/ba$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/android/mini/widget/v;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iget-object v1, p0, Lcom/alipay/android/mini/widget/v;->b:Lcom/alipay/android/mini/window/sdk/ba$a;

    iget-object v1, v1, Lcom/alipay/android/mini/window/sdk/ba$a;->b:[Lr/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a([Lr/a;)V

    .line 120
    return-void
.end method
