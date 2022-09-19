.class public Lcom/youku/player/drm/MarlinBroadbandTransactionListener;
.super Ljava/lang/Object;
.source "MarlinBroadbandTransactionListener.java"

# interfaces
.implements Lcom/intertrust/wasabi/drm/TransactionListener;


# static fields
.field static final TAG:Ljava/lang/String; = "drm"


# instance fields
.field private isSuccessed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccessed()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;->isSuccessed:Z

    return v0
.end method

.method public onLicenseDataReceived([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Lcom/intertrust/wasabi/licensestore/LicenseStore;

    invoke-direct {v1}, Lcom/intertrust/wasabi/licensestore/LicenseStore;-><init>()V

    .line 26
    .local v1, "license_store":Lcom/intertrust/wasabi/licensestore/LicenseStore;
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 27
    .local v0, "license":Ljava/lang/String;
    const-string v3, "Marlin License"

    invoke-virtual {v1, v0, v3}, Lcom/intertrust/wasabi/licensestore/LicenseStore;->addLicense(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v1}, Lcom/intertrust/wasabi/licensestore/LicenseStore;->close()V
    :try_end_0
    .catch Lcom/intertrust/wasabi/ErrorCodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "license":Ljava/lang/String;
    .end local v1    # "license_store":Lcom/intertrust/wasabi/licensestore/LicenseStore;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "x":Lcom/intertrust/wasabi/ErrorCodeException;
    const-string v3, "drm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create License store: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/intertrust/wasabi/ErrorCodeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTransactionBegin(Lcom/intertrust/wasabi/drm/TransactionType;)V
    .locals 3
    .param p1, "transactionType"    # Lcom/intertrust/wasabi/drm/TransactionType;

    .prologue
    .line 52
    const-string v0, "drm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN transaction of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onTransactionEnd(Lcom/intertrust/wasabi/drm/TransactionType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "transactionType"    # Lcom/intertrust/wasabi/drm/TransactionType;
    .param p2, "resultCode"    # I
    .param p3, "resultString"    # Ljava/lang/String;
    .param p4, "serviceFault"    # Ljava/lang/String;

    .prologue
    .line 40
    if-eqz p2, :cond_0

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;->isSuccessed:Z

    .line 44
    :goto_0
    const-string v0, "drm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "END transaction of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tresult code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tresult string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/drm/MarlinBroadbandTransactionListener;->isSuccessed:Z

    goto :goto_0
.end method

.method public onTransactionProgress(Lcom/intertrust/wasabi/drm/TransactionType;II)V
    .locals 3
    .param p1, "transactionType"    # Lcom/intertrust/wasabi/drm/TransactionType;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 59
    const-string v0, "drm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROGRESS (notification of) transaction of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
