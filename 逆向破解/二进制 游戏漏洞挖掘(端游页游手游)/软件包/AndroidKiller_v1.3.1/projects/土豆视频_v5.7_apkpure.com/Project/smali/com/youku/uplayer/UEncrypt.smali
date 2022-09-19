.class public Lcom/youku/uplayer/UEncrypt;
.super Ljava/lang/Object;
.source "UEncrypt.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "uencrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeHeader()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/youku/uplayer/UEncrypt;->free_header()V

    .line 21
    return-void
.end method

.method private static native free_header()V
.end method

.method public static getEncryptHeaderInfo(Lcom/youku/uplayer/EncryptHeaderInfo;II)V
    .locals 0
    .param p0, "headerInfo"    # Lcom/youku/uplayer/EncryptHeaderInfo;
    .param p1, "version"    # I
    .param p2, "format"    # I

    .prologue
    .line 16
    invoke-static {p0, p1, p2}, Lcom/youku/uplayer/UEncrypt;->get_encrypt_header_info(Lcom/youku/uplayer/EncryptHeaderInfo;II)V

    .line 17
    return-void
.end method

.method private static native get_encrypt_header_info(Lcom/youku/uplayer/EncryptHeaderInfo;II)V
.end method
