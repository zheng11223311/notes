.class final Lcom/corncop/capricornus/zip/IdentityNameMapper;
.super Ljava/lang/Object;
.source "IdentityNameMapper.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/NameMapper;


# static fields
.field public static final INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;

    invoke-direct {v0}, Lcom/corncop/capricornus/zip/IdentityNameMapper;-><init>()V

    sput-object v0, Lcom/corncop/capricornus/zip/IdentityNameMapper;->INSTANCE:Lcom/corncop/capricornus/zip/NameMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    return-object p1
.end method
