.class public final La1/a$a;
.super La1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:La1/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La1/a$a;

    invoke-direct {v0}, La1/a$a;-><init>()V

    sput-object v0, La1/a$a;->b:La1/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La1/a;-><init>()V

    return-void
.end method
