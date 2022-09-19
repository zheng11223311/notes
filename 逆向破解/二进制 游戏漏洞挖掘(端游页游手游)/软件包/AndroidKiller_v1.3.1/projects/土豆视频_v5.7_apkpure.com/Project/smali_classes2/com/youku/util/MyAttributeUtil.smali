.class public Lcom/youku/util/MyAttributeUtil;
.super Ljava/lang/Object;
.source "MyAttributeUtil.java"


# static fields
.field public static final NAME_SPASE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v1, 0x7f0d00d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/util/MyAttributeUtil;->NAME_SPASE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/util/AttributeSet;Ljava/lang/String;)I
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/youku/util/MyAttributeUtil;->getInt(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/util/AttributeSet;Ljava/lang/String;I)I
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 15
    sget-object v0, Lcom/youku/util/MyAttributeUtil;->NAME_SPASE:Ljava/lang/String;

    invoke-interface {p0, v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getString(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "attrs"    # Landroid/util/AttributeSet;
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Lcom/youku/util/MyAttributeUtil;->NAME_SPASE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
