.class public Lio/rong/imlib/LibContext;
.super Landroid/content/ContextWrapper;
.source "LibContext.java"


# static fields
.field private static sAppKey:Ljava/lang/String;

.field private static sS:Lio/rong/imlib/LibContext;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public static getInstance()Lio/rong/imlib/LibContext;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lio/rong/imlib/LibContext;->sS:Lio/rong/imlib/LibContext;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    sget-object v0, Lio/rong/imlib/LibContext;->sS:Lio/rong/imlib/LibContext;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lio/rong/imlib/LibContext;

    invoke-direct {v0, p0}, Lio/rong/imlib/LibContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/rong/imlib/LibContext;->sS:Lio/rong/imlib/LibContext;

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lio/rong/imlib/LibContext;->sAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 25
    sput-object p1, Lio/rong/imlib/LibContext;->sAppKey:Ljava/lang/String;

    .line 26
    return-void
.end method
