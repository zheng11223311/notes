.class public final enum Ln/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ln/a;

.field public static final enum b:Ln/a;

.field private static final synthetic c:[Ln/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Ln/a;

    const-string v1, "Sentence"

    invoke-direct {v0, v1, v2}, Ln/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/a;->a:Ln/a;

    .line 21
    new-instance v0, Ln/a;

    const-string v1, "Function"

    invoke-direct {v0, v1, v3}, Ln/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/a;->b:Ln/a;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ln/a;

    sget-object v1, Ln/a;->a:Ln/a;

    aput-object v1, v0, v2

    sget-object v1, Ln/a;->b:Ln/a;

    aput-object v1, v0, v3

    sput-object v0, Ln/a;->c:[Ln/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln/a;
    .locals 1

    .prologue
    .line 11
    const-class v0, Ln/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ln/a;

    return-object v0
.end method

.method public static values()[Ln/a;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Ln/a;->c:[Ln/a;

    invoke-virtual {v0}, [Ln/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln/a;

    return-object v0
.end method
