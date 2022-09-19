.class public abstract Lorg/openad/controller/BasicController;
.super Lorg/openad/events/XYDEventDispatcher;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    iput-object p1, p0, Lorg/openad/controller/BasicController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/openad/controller/BasicController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract stopAllListeners()V
.end method
