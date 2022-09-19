.class final enum Lb/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lb/f;

.field public static final enum b:Lb/f;

.field public static final enum c:Lb/f;

.field public static final enum d:Lb/f;

.field public static final enum e:Lb/f;

.field public static final enum f:Lb/f;

.field public static final enum g:Lb/f;

.field private static final synthetic h:[Lb/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lb/f;

    const-string v1, "Next"

    invoke-direct {v0, v1, v3}, Lb/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f;->a:Lb/f;

    .line 17
    new-instance v0, Lb/f;

    const-string v1, "PrevWindow"

    invoke-direct {v0, v1, v4}, Lb/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f;->b:Lb/f;

    .line 20
    new-instance v0, Lb/f;

    const-string v1, "Exit"

    invoke-direct {v0, v1, v5}, Lb/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f;->c:Lb/f;

    .line 23
    new-instance v0, Lb/f;

    const-string v1, "ClearInvalid"

    invoke-direct {v0, v1, v6}, Lb/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f;->d:Lb/f;

    .line 26
    new-instance v0, Lb/f;

    const-string v1, "PrevStep"

    invoke-direct {v0, v1, v7}, Lb/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f;->e:Lb/f;

    .line 29
    new-instance v0, Lb/f;

    const-string v1, "Wait"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lb/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f;->f:Lb/f;

    .line 32
    new-instance v0, Lb/f;

    const-string v1, "Reset"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lb/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f;->g:Lb/f;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lb/f;

    sget-object v1, Lb/f;->a:Lb/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/f;->b:Lb/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/f;->c:Lb/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/f;->d:Lb/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/f;->e:Lb/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/f;->f:Lb/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/f;->g:Lb/f;

    aput-object v2, v0, v1

    sput-object v0, Lb/f;->h:[Lb/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/f;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lb/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/f;

    return-object v0
.end method

.method public static values()[Lb/f;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lb/f;->h:[Lb/f;

    invoke-virtual {v0}, [Lb/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f;

    return-object v0
.end method
