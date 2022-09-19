.class public final Lcom/intertrust/wasabi/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intertrust/wasabi/Runtime$Property;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "WasabiJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLicense(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 220
    if-nez p0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content_id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/intertrust/wasabi/jni/Runtime;->checkLicense(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 225
    return-void
.end method

.method public static getProperty(Lcom/intertrust/wasabi/Runtime$Property;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 236
    if-nez p0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "property_id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 240
    invoke-static {p0, v0}, Lcom/intertrust/wasabi/jni/Runtime;->getProperty(Lcom/intertrust/wasabi/Runtime$Property;[Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 241
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {v0, v0}, Lcom/intertrust/wasabi/jni/Runtime;->initializeEx(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 134
    return-void
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/intertrust/wasabi/Runtime;->initializeEx(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static initializeEx(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/intertrust/wasabi/jni/Runtime;->initializeEx(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 99
    return-void
.end method

.method public static isPersonalized()Z
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/intertrust/wasabi/jni/Runtime;->isPersonalized()Z

    move-result v0

    return v0
.end method

.method public static personalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/intertrust/wasabi/Runtime;->personalize(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static personalize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p0}, Lcom/intertrust/wasabi/jni/Runtime;->personalize(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 165
    return-void
.end method

.method public static processServiceToken(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 194
    if-nez p0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/intertrust/wasabi/jni/Runtime;->processServiceToken(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 200
    return-void
.end method

.method public static setProperty(Lcom/intertrust/wasabi/Runtime$Property;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 255
    if-nez p0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "property_id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    if-nez p1, :cond_1

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_1
    invoke-static {p0, p1}, Lcom/intertrust/wasabi/jni/Runtime;->setProperty(Lcom/intertrust/wasabi/Runtime$Property;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 262
    return-void
.end method

.method public static shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intertrust/wasabi/ErrorCodeException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/intertrust/wasabi/jni/Runtime;->shutdown()I

    move-result v0

    invoke-static {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->checkResult(I)V

    .line 274
    return-void
.end method
