.class public final enum Lio/rong/imlib/NativeClient$BlacklistStatus;
.super Ljava/lang/Enum;
.source "NativeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlacklistStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imlib/NativeClient$BlacklistStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imlib/NativeClient$BlacklistStatus;

.field public static final enum EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;

.field public static final enum NOT_EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2044
    new-instance v0, Lio/rong/imlib/NativeClient$BlacklistStatus;

    const-string v1, "EXIT_BLACK_LIST"

    invoke-direct {v0, v1, v2, v2}, Lio/rong/imlib/NativeClient$BlacklistStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/NativeClient$BlacklistStatus;->EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;

    .line 2049
    new-instance v0, Lio/rong/imlib/NativeClient$BlacklistStatus;

    const-string v1, "NOT_EXIT_BLACK_LIST"

    invoke-direct {v0, v1, v3, v3}, Lio/rong/imlib/NativeClient$BlacklistStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/rong/imlib/NativeClient$BlacklistStatus;->NOT_EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;

    .line 2039
    const/4 v0, 0x2

    new-array v0, v0, [Lio/rong/imlib/NativeClient$BlacklistStatus;

    sget-object v1, Lio/rong/imlib/NativeClient$BlacklistStatus;->EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/imlib/NativeClient$BlacklistStatus;->NOT_EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;

    aput-object v1, v0, v3

    sput-object v0, Lio/rong/imlib/NativeClient$BlacklistStatus;->$VALUES:[Lio/rong/imlib/NativeClient$BlacklistStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 2059
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2052
    const/4 v0, 0x1

    iput v0, p0, Lio/rong/imlib/NativeClient$BlacklistStatus;->value:I

    .line 2060
    iput p3, p0, Lio/rong/imlib/NativeClient$BlacklistStatus;->value:I

    .line 2061
    return-void
.end method

.method public static setValue(I)Lio/rong/imlib/NativeClient$BlacklistStatus;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 2079
    invoke-static {}, Lio/rong/imlib/NativeClient$BlacklistStatus;->values()[Lio/rong/imlib/NativeClient$BlacklistStatus;

    move-result-object v0

    .local v0, "arr$":[Lio/rong/imlib/NativeClient$BlacklistStatus;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 2080
    .local v1, "c":Lio/rong/imlib/NativeClient$BlacklistStatus;
    invoke-virtual {v1}, Lio/rong/imlib/NativeClient$BlacklistStatus;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 2084
    .end local v1    # "c":Lio/rong/imlib/NativeClient$BlacklistStatus;
    :goto_1
    return-object v1

    .line 2079
    .restart local v1    # "c":Lio/rong/imlib/NativeClient$BlacklistStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2084
    .end local v1    # "c":Lio/rong/imlib/NativeClient$BlacklistStatus;
    :cond_1
    sget-object v1, Lio/rong/imlib/NativeClient$BlacklistStatus;->NOT_EXIT_BLACK_LIST:Lio/rong/imlib/NativeClient$BlacklistStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imlib/NativeClient$BlacklistStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2039
    const-class v0, Lio/rong/imlib/NativeClient$BlacklistStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/NativeClient$BlacklistStatus;

    return-object v0
.end method

.method public static values()[Lio/rong/imlib/NativeClient$BlacklistStatus;
    .locals 1

    .prologue
    .line 2039
    sget-object v0, Lio/rong/imlib/NativeClient$BlacklistStatus;->$VALUES:[Lio/rong/imlib/NativeClient$BlacklistStatus;

    invoke-virtual {v0}, [Lio/rong/imlib/NativeClient$BlacklistStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imlib/NativeClient$BlacklistStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 2069
    iget v0, p0, Lio/rong/imlib/NativeClient$BlacklistStatus;->value:I

    return v0
.end method
