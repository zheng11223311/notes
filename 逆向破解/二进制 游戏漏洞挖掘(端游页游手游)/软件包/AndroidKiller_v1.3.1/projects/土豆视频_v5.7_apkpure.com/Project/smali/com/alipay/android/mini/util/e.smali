.class Lcom/alipay/android/mini/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/util/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/c;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/android/mini/util/e;->a:Lcom/alipay/android/mini/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    return-void
.end method
