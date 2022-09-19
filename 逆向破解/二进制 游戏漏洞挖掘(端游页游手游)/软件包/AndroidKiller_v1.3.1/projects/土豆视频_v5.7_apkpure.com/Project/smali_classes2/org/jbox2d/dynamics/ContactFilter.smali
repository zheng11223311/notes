.class public interface abstract Lorg/jbox2d/dynamics/ContactFilter;
.super Ljava/lang/Object;
.source "ContactFilter.java"


# static fields
.field public static final DEFAULT_FILTER:Lorg/jbox2d/dynamics/ContactFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/jbox2d/dynamics/DefaultContactFilter;

    invoke-direct {v0}, Lorg/jbox2d/dynamics/DefaultContactFilter;-><init>()V

    sput-object v0, Lorg/jbox2d/dynamics/ContactFilter;->DEFAULT_FILTER:Lorg/jbox2d/dynamics/ContactFilter;

    .line 35
    return-void
.end method


# virtual methods
.method public abstract shouldCollide(Lorg/jbox2d/collision/Shape;Lorg/jbox2d/collision/Shape;)Z
.end method
