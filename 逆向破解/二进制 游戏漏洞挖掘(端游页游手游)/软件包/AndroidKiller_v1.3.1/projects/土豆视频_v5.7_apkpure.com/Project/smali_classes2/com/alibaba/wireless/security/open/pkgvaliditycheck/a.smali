.class public final Lcom/alibaba/wireless/security/open/pkgvaliditycheck/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;
.implements Lcom/alibaba/wireless/security/open/pkgvaliditycheck/IPkgValidityCheckComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/g/a;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/g/a;

    invoke-direct {v0, p1}, Lcom/taobao/wireless/security/adapter/g/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/pkgvaliditycheck/a;->a:Lcom/taobao/wireless/security/adapter/g/a;

    return-void
.end method


# virtual methods
.method public final varargs checkEnvAndFiles([Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/pkgvaliditycheck/a;->a:Lcom/taobao/wireless/security/adapter/g/a;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/g/a;->a([Ljava/lang/String;)I

    move-result v0

    return v0
.end method
