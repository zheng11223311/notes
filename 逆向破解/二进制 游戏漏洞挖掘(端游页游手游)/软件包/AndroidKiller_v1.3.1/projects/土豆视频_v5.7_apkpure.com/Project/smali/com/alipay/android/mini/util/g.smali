.class Lcom/alipay/android/mini/util/g;
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
    .line 81
    iput-object p1, p0, Lcom/alipay/android/mini/util/g;->a:Lcom/alipay/android/mini/util/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    return-void
.end method
