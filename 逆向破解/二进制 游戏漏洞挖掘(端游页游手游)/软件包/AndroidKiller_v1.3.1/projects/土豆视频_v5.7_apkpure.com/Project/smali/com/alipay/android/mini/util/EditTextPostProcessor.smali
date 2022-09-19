.class public Lcom/alipay/android/mini/util/EditTextPostProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "edittextutil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native clear(I)V
.end method

.method public static native getText(I)Ljava/lang/String;
.end method

.method public static native getTextMD5(I)Ljava/lang/String;
.end method

.method public static native onTextChanged(ILjava/lang/String;III)V
.end method

.method public static native setRsaPublicKey(Ljava/lang/String;)V
.end method
