.class final Lcom/alipay/android/mini/util/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/alipay/android/mini/util/s;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/mini/util/s;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/mini/util/s;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/alipay/android/mini/util/s;->a:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/mini/util/s;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alipay/android/mini/util/s;->a:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/alipay/android/mini/util/s;->c:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    iget-object v1, p0, Lcom/alipay/android/mini/util/s;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 613
    :cond_0
    return-void
.end method
