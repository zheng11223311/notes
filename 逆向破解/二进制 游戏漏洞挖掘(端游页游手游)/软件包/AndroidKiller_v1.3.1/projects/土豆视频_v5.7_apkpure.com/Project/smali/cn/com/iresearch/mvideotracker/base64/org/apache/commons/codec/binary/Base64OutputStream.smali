.class public Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64OutputStream;
.super Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;
.source "Base64OutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z

    .prologue
    .line 73
    new-instance v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z
    .param p3, "lineLength"    # I
    .param p4, "lineSeparator"    # [B

    .prologue
    .line 98
    new-instance v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 99
    return-void
.end method
