.class public Lu/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/Object; = null

.field private static final b:I = 0x49

.field private static c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lu/a;->a:[Ljava/lang/Object;

    .line 32
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lu/a;->c:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 40
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 41
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 43
    :cond_0
    return p0

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([B[BI)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p0

    if-lt v2, p2, :cond_2

    array-length v2, p1

    if-ge v2, p2, :cond_3

    :cond_2
    move v0, v1

    .line 91
    goto :goto_0

    :cond_3
    move v2, v1

    .line 93
    :goto_1
    if-ge v2, p2, :cond_0

    .line 94
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_4

    move v0, v1

    .line 95
    goto :goto_0

    .line 93
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 150
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 151
    if-ne v3, p1, :cond_1

    .line 152
    const/4 v0, 0x1

    .line 155
    :cond_0
    return v0

    .line 150
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, p0, v2

    .line 138
    if-nez v4, :cond_1

    .line 139
    if-nez p1, :cond_2

    .line 146
    :cond_0
    :goto_1
    return v0

    .line 142
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 146
    goto :goto_1
.end method

.method public static a(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 108
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 109
    sget-object v0, Lu/a;->a:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 123
    :goto_0
    return-object v0

    .line 112
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x49

    .line 114
    sget-object v0, Lu/a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 116
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 117
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 118
    sget-object v2, Lu/a;->c:[Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 123
    :cond_2
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lu/a;->a(I)I

    move-result v0

    return v0
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 51
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lu/a;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static d(I)I
    .locals 1

    .prologue
    .line 55
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lu/a;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static e(I)I
    .locals 1

    .prologue
    .line 59
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lu/a;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static f(I)I
    .locals 1

    .prologue
    .line 63
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lu/a;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static g(I)I
    .locals 1

    .prologue
    .line 67
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lu/a;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static h(I)I
    .locals 1

    .prologue
    .line 71
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lu/a;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
