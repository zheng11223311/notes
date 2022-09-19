.class public Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64OutputStream;
.super Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .locals 1

    new-instance v0, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lcn/com/iresearch/mapptracker/base64/org/apache/commons/codec/binary/BaseNCodec;Z)V

    return-void
.end method
