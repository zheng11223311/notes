.class public Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/Charsets;
.super Ljava/lang/Object;
.source "Charsets.java"


# static fields
.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_16:Ljava/nio/charset/Charset;

.field public static final UTF_16BE:Ljava/nio/charset/Charset;

.field public static final UTF_16LE:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 113
    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 128
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 127
    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 142
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 155
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 154
    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 168
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 167
    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 180
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcn/com/iresearch/mvideotracker/base64/org/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public static toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 0
    .param p0, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 85
    if-nez p0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p0

    .end local p0    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    return-object p0
.end method
