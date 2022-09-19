.class public final enum Lq/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lq/b;

.field public static final enum b:Lq/b;

.field public static final enum c:Lq/b;

.field public static final enum d:Lq/b;

.field public static final enum e:Lq/b;

.field public static final enum f:Lq/b;

.field public static final enum g:Lq/b;

.field public static final enum h:Lq/b;

.field public static final enum i:Lq/b;

.field public static final enum j:Lq/b;

.field private static final synthetic l:[Lq/b;


# instance fields
.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lq/b;

    const-string v1, "SUCCESS"

    const-string v2, "0"

    invoke-direct {v0, v1, v4, v2}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->a:Lq/b;

    .line 18
    new-instance v0, Lq/b;

    const-string v1, "FORCE_EXIT"

    const-string v2, "force_exit"

    invoke-direct {v0, v1, v5, v2}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->b:Lq/b;

    .line 21
    new-instance v0, Lq/b;

    const-string v1, "INITIAL_INVALID"

    const-string v2, "initial_invalid"

    invoke-direct {v0, v1, v6, v2}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->c:Lq/b;

    .line 24
    new-instance v0, Lq/b;

    const-string v1, "TID_REFRESH"

    const-string/jumbo v2, "tid_refresh_invalid"

    invoke-direct {v0, v1, v7, v2}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->d:Lq/b;

    .line 27
    new-instance v0, Lq/b;

    const-string v1, "PAYMENT_RESULT"

    const-string v2, "payment_result"

    invoke-direct {v0, v1, v8, v2}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->e:Lq/b;

    .line 30
    new-instance v0, Lq/b;

    const-string v1, "QUERY_RESULT"

    const/4 v2, 0x5

    const-string v3, "query_result"

    invoke-direct {v0, v1, v2, v3}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->f:Lq/b;

    .line 33
    new-instance v0, Lq/b;

    const-string v1, "MIX_OLDCARD_PAY_ILLEGAL"

    const/4 v2, 0x6

    const-string v3, "mix_oldcard_pay_illegal"

    invoke-direct {v0, v1, v2, v3}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->g:Lq/b;

    .line 36
    new-instance v0, Lq/b;

    const-string v1, "POP_TYPE"

    const/4 v2, 0x7

    const-string v3, "pop_type"

    invoke-direct {v0, v1, v2, v3}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->h:Lq/b;

    .line 39
    new-instance v0, Lq/b;

    const-string v1, "NOT_POP_TYPE"

    const/16 v2, 0x8

    const-string v3, "not_pop_type"

    invoke-direct {v0, v1, v2, v3}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->i:Lq/b;

    .line 42
    new-instance v0, Lq/b;

    const-string v1, "CLIENT_CONFIRM"

    const/16 v2, 0x9

    const-string v3, "client_confirm"

    invoke-direct {v0, v1, v2, v3}, Lq/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lq/b;->j:Lq/b;

    .line 12
    const/16 v0, 0xa

    new-array v0, v0, [Lq/b;

    sget-object v1, Lq/b;->a:Lq/b;

    aput-object v1, v0, v4

    sget-object v1, Lq/b;->b:Lq/b;

    aput-object v1, v0, v5

    sget-object v1, Lq/b;->c:Lq/b;

    aput-object v1, v0, v6

    sget-object v1, Lq/b;->d:Lq/b;

    aput-object v1, v0, v7

    sget-object v1, Lq/b;->e:Lq/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lq/b;->f:Lq/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lq/b;->g:Lq/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lq/b;->h:Lq/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lq/b;->i:Lq/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lq/b;->j:Lq/b;

    aput-object v2, v0, v1

    sput-object v0, Lq/b;->l:[Lq/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lq/b;->k:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lq/b;
    .locals 6

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {}, Lq/b;->values()[Lq/b;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 57
    invoke-virtual {v0}, Lq/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 62
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lq/b;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lq/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lq/b;

    return-object v0
.end method

.method public static values()[Lq/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lq/b;->l:[Lq/b;

    invoke-virtual {v0}, [Lq/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lq/b;->k:Ljava/lang/String;

    return-object v0
.end method
