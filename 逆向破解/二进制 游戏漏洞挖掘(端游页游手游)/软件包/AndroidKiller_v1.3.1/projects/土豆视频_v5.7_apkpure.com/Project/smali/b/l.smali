.class public final enum Lb/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lb/l;

.field public static final enum b:Lb/l;

.field public static final enum c:Lb/l;

.field public static final enum d:Lb/l;

.field private static final synthetic h:[Lb/l;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lb/l;

    const-string v1, "LeftInOnly"

    const-string v3, "left_in"

    const-string v4, "msp_left_in"

    const-string v5, "msp_alpha_out"

    invoke-direct/range {v0 .. v5}, Lb/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lb/l;->a:Lb/l;

    .line 17
    new-instance v3, Lb/l;

    const-string v4, "RightInOnly"

    const-string/jumbo v6, "right_in"

    const-string v7, "msp_right_in"

    const-string v8, "msp_alpha_out"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lb/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lb/l;->b:Lb/l;

    .line 19
    new-instance v3, Lb/l;

    const-string v4, "LeftInAndRightOut"

    const-string v6, "left_in_right_out"

    const-string v7, "msp_left_in"

    const-string v8, "msp_right_out"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lb/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lb/l;->c:Lb/l;

    .line 21
    new-instance v3, Lb/l;

    const-string v4, "RightInAndLeftOut"

    const-string/jumbo v6, "right_in_left_out"

    const-string v7, "msp_right_in"

    const-string v8, "msp_left_out"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lb/l;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lb/l;->d:Lb/l;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lb/l;

    sget-object v1, Lb/l;->a:Lb/l;

    aput-object v1, v0, v2

    sget-object v1, Lb/l;->b:Lb/l;

    aput-object v1, v0, v9

    sget-object v1, Lb/l;->c:Lb/l;

    aput-object v1, v0, v10

    sget-object v1, Lb/l;->d:Lb/l;

    aput-object v1, v0, v11

    sput-object v0, Lb/l;->h:[Lb/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lb/l;->e:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lb/l;->f:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lb/l;->g:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;)Lb/l;
    .locals 5

    .prologue
    .line 39
    invoke-static {}, Lb/l;->values()[Lb/l;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 40
    invoke-virtual {v0}, Lb/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    :goto_1
    return-object v0

    .line 39
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lb/l;->c:Lb/l;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lb/l;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lb/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/l;

    return-object v0
.end method

.method public static values()[Lb/l;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lb/l;->h:[Lb/l;

    invoke-virtual {v0}, [Lb/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/l;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lb/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lb/l;->g:Ljava/lang/String;

    invoke-static {v0}, Lj/i;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lb/l;->f:Ljava/lang/String;

    invoke-static {v0}, Lj/i;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
